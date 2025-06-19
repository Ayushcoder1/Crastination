import React, { useEffect } from 'react'
import TODO from './components/TODO'
import Form from './components/Form'
import Card from './components/Card'
import Edit from './EditPage.jsx'
import { todosAtom, editModeAtom, get_data_Atom } from './store/atoms.jsx'
import { useAtomValue, useAtom, useSetAtom } from 'jotai'
import Navbar from './components/Navbar.jsx'
import { FixedSizeList as List } from 'react-window'

function Todos() {
  const todos = useAtomValue(todosAtom)
  const [editMode, setEditMode] = useAtom(editModeAtom)
  const get_data = useSetAtom(get_data_Atom)

  useEffect(() => {
    get_data()
  }, [])

  const ITEM_HEIGHT = 150
  const LIST_HEIGHT = 600

  const Row = ({ index, style }) => {
    const todo = todos[index]
    return (
      <div style={style}>
        <Card key={todo.id}>
          <TODO todo={todo} />
        </Card>
      </div>
    )
  }

  return (
    <div id="outer_app">
      <Navbar isTodos={1}/>
      <Card>
        <Form />
      </Card>

      <List
        height={LIST_HEIGHT}
        itemCount={todos.length}
        itemSize={ITEM_HEIGHT}
        width="100%"
      >
        {Row}
      </List>

      {editMode && (
        <div className="fixed inset-0 bg-white flex items-center justify-center z-50">
          <div className="flex justify-center full-screen shadow-3xl">
            <Edit/>
          </div>
        </div>
      )}
    </div>
  )
}

export default Todos
