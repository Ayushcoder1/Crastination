function Input({inputRef, placeholderText}){
    return <input
          ref={inputRef}
          type="text"
          placeholder={placeholderText}
          className="flex-1 px-3 py-2 border rounded-md bg-white focus:outline-none focus:ring-2 focus:ring-amber-300"
    />
}

export default Input;