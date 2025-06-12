import { atom } from 'jotai';
import { useNavigate } from 'react-router-dom';

export const todosAtom = atom([]);

export const filteredAtom = atom([]);

export const editModeAtom = atom(null);

const dns = "http://ec2-13-235-78-242.ap-south-1.compute.amazonaws.com"
// const dns = "http://localhost:3000"

export const tokenAtom = atom(sessionStorage.getItem('token') || null);

export const warningAtom = atom(null);

export const get_data_Atom = atom(
  (get) => get(todosAtom),
  async (get, set) => {
    const token = get(tokenAtom);
    if (token === null) {
      set(todosAtom, []);
      return;
    }
    let res = await fetch(`${dns}/account/todos`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token,
      },
    });
    res = await res.json();
    set(todosAtom, res);
  }
);

export const add_todo_Atom = atom(
  null,
  async (get, set, newTodo) => {
    set(warningAtom, null);
    const token = get(tokenAtom);
    if (token === null) {
      alert('log in please');
      return;
    }
    const res = await fetch(`${dns}/account/add`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token,
      },
      body: JSON.stringify(newTodo),
    });
    if (res.status !== 200) {
      const data = await res.json();
      // console.log('Invalid entries, try again.');
      set(warningAtom, data.msg);
      return;
    }
    set(get_data_Atom);
  }
);

export const toggle_todo_Atom = atom(
  null,
  async (get, set, todoId, status) => {
    const token = get(tokenAtom);
    if (token === null) {
      alert('log in please');
      return;
    }
    await fetch(`${dns}/account/done`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token,
        'id': todoId,
        'status' : status === true ? 'true' : 'false',
      },
    });
    set(get_data_Atom);
  }
);

export const delete_todo_Atom = atom(
  null,
  async (get, set, id) => {
    const token = get(tokenAtom);
    if (token === null) {
      alert('log in please');
      return;
    }
    // console.log(id);
    await fetch(`${dns}/account/delete`, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token,
      },
      body: JSON.stringify({ id : id }),
    });
    set(get_data_Atom);
  }
);

export const session_Atom = atom(
  null,
  async (get, set, {isSignin, username, password, name=null }) => {
    const path = !isSignin ? 'signup' : 'login';
    set(warningAtom, null);
    // console.log('here', { username, password, name });
    const res = await fetch(`${dns}/user/${path}`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ username, password, name }),
    });
    const data = await res.json();
    // console.log(res);
    if (res.status === 200) {
      sessionStorage.setItem('token', data.token);
      set(tokenAtom, data.token);
      set(get_data_Atom);
      // navigate('/account/todos');
    } else {
      // console.error('Login failed:', data.message);
      // if(path == 'login') set(warningAtom, "Incorrect Username or password.");
      // else{
      //   if(res.status == 409) set(warningAtom, "User with same credential already present.");
      //   else set(warningAtom, "Enter a valid email and password(minimum length:6).")
      // }
      set(warningAtom, data.msg);
    }
  }
);

export const edit_todo_Atom = atom(
  null,
  async (get, set, content) => {
    const token = get(tokenAtom);
    const res = await fetch(`${dns}/account/edit`, {
        method : 'PUT',
        headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token
        },
        body: JSON.stringify(content)
    });
    set(get_data_Atom);
    set(editModeAtom, null);
  }
)

export const fetch_filter_data_atom = atom(
  null,
  async (get, set, filter, quantity) => {
    const token = get(tokenAtom);
    // console.log(token);
    const res = await fetch(`${dns}/account/filter`, {
        method : 'POST',
        headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + token
        },
        body: JSON.stringify({filter : filter, quantity : quantity})
    });
    const data = await res.json();
    // console.log(data);
    set(filteredAtom, data);
  }
)