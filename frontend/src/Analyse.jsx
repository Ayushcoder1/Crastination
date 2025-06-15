import { useAtom, useAtomValue } from "jotai";
import Filter from "./components/Filter";
import { editModeAtom, filteredAtom } from "./store/atoms";
import TODO from "./components/TODO";
import Card from "./components/Card";
import Navbar from "./components/Navbar";
import Edit from "./EditPage";

function Analyse(){
    const [filteredTodos, ] = useAtom(filteredAtom);
    const [editMode, setEditMode] = useAtom(editModeAtom);
    return (
        <div>
            <div>
                <Navbar isTodos={0}/>
            </div>
           <div>
            <Filter />
           </div>
           {filteredTodos.map(function(todo){
            // console.log(todo);
            return <Card  key={todo.id}>
            <TODO todo={todo}/>
            </Card>
            })}

            {editMode && (
                <div className='fixed inset-0 bg-white flex items-center justify-center z-50'>
                <div className='flex justify-center full-screen shadow-3xl'>
                    <Edit/>
                </div>
                </div>
            )}
        </div>
    )
}

export default Analyse;