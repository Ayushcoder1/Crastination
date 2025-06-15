const express = require('express');
const { authMiddleware, todoValidator } = require('../middleware');
// const { TODO } = require('../db');
const { pool } = require('../db.js');

const router = express.Router();

router.post('/add', authMiddleware, todoValidator, async (req, res) => {
    const todo = req.body;
    const username = req.user;
    // const lookup = await TODO.findOne({
    //   username,
    //   'todos.id': todo.id
    // });
    // await client.connect();
    const lookup = await pool.query(`
      SELECT * FROM users u JOIN todo t on u.id = t.user_id
      WHERE u.email = $1 and t.id = $2;
    `, [username, todo.id])

    
    if(lookup.row_length > 0){
      return res.status(409).json({msg : "Duplicate ID, enter different ID."});
    }

    // await TODO.updateOne(
    //   { username : username},
    //   {$push: { todos: todo } },
    //   { upsert: true }
    // );

    await pool.query(`
      INSERT INTO todo (user_id, id, title, description, status, deadline)
      VALUES ((SELECT id FROM users WHERE email = $1), $2, $3, $4, $5, $6);
    `, [username, todo.id, todo.title, todo.description, todo.Status, todo.deadline]);

    // client.end();
    return res.sendStatus(200);
});

router.put('/edit', authMiddleware, async (req, res) => {
    const todo = req.body;
    const username = req.user;
    // const lookup = await TODO.findOne({
    //   username,
    //   'todos.id': todo.id
    // });

    // await client.connect();
    // const lookup = await client.query(`
    //   SELECT * FROM users u JOIN todo t on users.id = t.user_id
    //   WHERE u.email = $1 AND t.id = $2;
    // `, [username, todo.id])

    // if(lookup.row_length == 0){
    //   return res.sendStatus(409);
    // }

    // await TODO.updateOne(
    //   { username : username,
    //     'todos.id' : todo.id
    //   },
    //   {
    //     $set: {
    //       'todos.$.title':       todo.title,
    //       'todos.$.description': todo.description,
    //       'todos.$.Status':      todo.Status,
    //       'todos.$.deadline':    todo.deadline
    //     }
    //   },
    // );
    await pool.query(`
      UPDATE todo
      SET title = $1, description = $2, status = $3, deadline = $4
      WHERE id = $5 AND user_id = (SELECT id FROM users WHERE email = $6);
    `, [todo.title, todo.description, todo.Status, todo.deadline, todo.id, username]);
    // client.end();

    return res.sendStatus(200);
});

router.delete('/delete', authMiddleware, async (req, res) => {
  const id = req.body.id;
  const username = req.user;
  // await TODO.updateOne(
  //   {username : username},
  //   {$pull : {todos : {id : id}}}
  // );
  // await client.connect();
  // console.log(id);
  await pool.query(`
    DELETE FROM todo
    WHERE id = $1 AND user_id = (SELECT id FROM users WHERE email = $2);
  `, [id, username]);
  // client.end();

  return res.sendStatus(200);
});

router.put('/done', authMiddleware, async (req, res) => {
  const id = req.headers.id;
  const username = req.user;
  // await TODO.updateOne(
  //   {username : username, "todos.id": id},
  //   {$set : {"todos.$.Status" : req.headers.status === 'true' ? true : false}}
  // );
  const status = req.headers.status === 'true' ? true : false;
  // await client.connect();
  await pool.query(`
    UPDATE todo
    SET status = $1 WHERE id = $2 AND user_id = (SELECT id FROM users WHERE email = $3);
  `, [status, id, username]);
  // client.end();

  return res.sendStatus(200);
});

router.get('/todos', authMiddleware, async (req, res) => {
  const username = req.user;
  // const data = await TODO.findOne({username : username});

  // await client.connect();
  const data = await pool.query(`
    SELECT * FROM todo
    WHERE user_id = (SELECT id from users WHERE email = $1);
  `, [username]);

  // console.log(data);
  if(data.rowCount == 0) return res.json([])
  const todos = data.rows.map(row => ({
    id: row.id,
    title: row.title,
    description: row.description,
    Status: row.status,
    deadline: row.deadline
  }));
  // console.log(todos);
  return res.json(todos);
});

function getsinceEpoch(dateStr){
  const [day, month, year] = dateStr.split("-").map(Number);

  // 2) Construct a Date object (month is 0-based)
  const dateObj = new Date(year, month - 1, day);

  // 3) Grab the millisecond timestamp
  const msSinceEpoch = dateObj.getTime();

  return msSinceEpoch;
}

function titleFilter(curr){
  return "AND title ILIKE $" + String(curr);
}

function descriptionFilter(curr){
  return "AND description ILIKE $" + String(curr);
}

function statusFilter(curr){
  return "AND status = $" + String(curr);
}

function deadlineFilter(curr){
  return "AND deadline BETWEEN $" + String(curr) + " AND $" + String(curr + 1);
}

router.post('/filter', authMiddleware, async(req, res) => {
  const username = req.user;
  const filter = req.body.filters;
  // console.log(quantity);
  // console.log(filter);
  // if(quantity == 'Status'){
  //   data = await pool.query(`
  //   SELECT * FROM todo
  //   WHERE user_id = (SELECT id from users WHERE email = $1)
  //   AND ${quantity} = $2;
  // `,[username, filter.toLowerCase()]);
  // }
  // else if(quantity != 'deadline'){
  //   data = await pool.query(`
  //   SELECT * FROM todo
  //   WHERE user_id = (SELECT id from users WHERE email = $1)
  //   AND ${quantity} ILIKE $2;
  // `,[username, `%${filter}%`]);
  // }
  // else{
  //   let [ start, end ] = filter.split("to").map(str => str.trim());
  //   start = getsinceEpoch(start);
  //   end = getsinceEpoch(end);
    
  //   // console.log(start, end);

  //   data = await pool.query(`
  //   SELECT * FROM todo
  //   WHERE user_id = (SELECT id from users WHERE email = $1)
  //   AND ${quantity} between $2 AND $3;
  // `,[username, start, end]);
  // }
  let query = `SELECT * FROM todo WHERE user_id = (SELECT id FROM users WHERE email = $1)`;
  let vec = [username];
  let curr = 2;
  for(let i of filter['Title']){
    query = query + ` ` + titleFilter(curr);
    curr++;
    vec.push(`%${i}%`);
  }

  for(let i of filter['Description']){
    query = query + ` ` + descriptionFilter(curr);
    curr++;
    vec.push(`%${i}%`);
  }

  for(let i of filter['Status']){
    query = query + ` ` + statusFilter(curr);
    const boolVal = String(i).toLowerCase() === 'true';
    vec.push(boolVal);
    curr++;
  }

  for(let i of filter['Deadline']){
    query = query + ` ` + deadlineFilter(curr);
    curr += 2;
    let [ start, end ] = i.split("~").map(str => str.trim());
    start = new Date(start).getTime();
    end = new Date(end).getTime();
    // console.log(start, end);
    vec.push(start);
    vec.push(end);
  }
  const data = await pool.query(query, vec);
  if(data.rowCount == 0) return res.json([])
  const todos = data.rows.map(row => ({
    id: row.id,
    title: row.title,
    description: row.description,
    Status: row.status,
    deadline: row.deadline
  }));
  // console.log(todos);
  return res.json(todos);
})

module.exports = router;