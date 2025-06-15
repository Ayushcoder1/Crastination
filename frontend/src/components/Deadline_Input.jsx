function Deadline_Input({d1, d2}){
    return <div className="flex">
        <input ref={d1}    type='date' className='border-2 w-120 p-2 rounded-sm bg-white text-xl'/>
        <input ref={d2}    type='date' className='border-2 w-120 ml-8 p-2 rounded-sm bg-white text-xl'/>
    </div>
}

export default Deadline_Input;