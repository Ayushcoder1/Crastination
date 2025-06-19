import { useAtomValue, useAtom } from "jotai";
import { FixedSizeList as List } from "react-window";
import Filter from "./components/Filter";
import { editModeAtom, filteredAtom } from "./store/atoms";
import TODO  from "./components/TODO";
import Card  from "./components/Card";
import Navbar from "./components/Navbar";
import Edit  from "./EditPage";

function Analyse() {
  const filteredTodos = useAtomValue(filteredAtom);
  const [editMode, setEditMode] = useAtom(editModeAtom);

  const ITEM_HEIGHT = 150;      
  const LIST_HEIGHT = 600; 

  const Row = ({ index, style }) => {
    const todo = filteredTodos[index];
    return (
      <div style={style}>
        <Card key={todo.id}>
          <TODO todo={todo} />
        </Card>
      </div>
    );
  };

  return (
    <div>
      <Navbar isTodos={0}/>
      <Filter/>

      <List
        height={LIST_HEIGHT}
        itemCount={filteredTodos.length}
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
  );
}

export default Analyse;