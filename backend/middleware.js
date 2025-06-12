const zod = require('zod');
const jwt = require('jsonwebtoken');
const passKey = require('./config.js').JWT_SECRET_KEY;

function validator(req, res, next){
    const schema = zod.object({
        username : zod.string().email(),
        name : zod.string(),
        password : zod.string().min(6)
    })
    const check = schema.safeParse(req.body);
    if(!check.success){
        return res.status(403).json({msg : "Please enter valid email and password (min length : 6)."});
    }
    next();
}

function authMiddleware(req, res, next) {
  const auth = req.headers.authorization?.split(' ')[1];
  if (!auth) return res.status(401).send('No token');
  try {
    const payload = jwt.verify(auth, passKey);
    req.user = payload.username;
    next();
  } catch (err) {
    res.status(401).send('Invalid token');
  }
}

function todoValidator(req, res, next){
  const schema = zod.object({
    id : zod.string().min(1),
    title : zod.string().min(1),
    description : zod.string().min(1),
    deadline : zod.number().min(new Date().getTime()),
    Status : zod.boolean()
  })
  const check = schema.safeParse(req.body)
  if(!check.success){
      return res.status(403).json({msg : "Invalid entries, please enter valid entries."});
  }
  next();
}

module.exports = {
    validator,
    authMiddleware,
    todoValidator
};