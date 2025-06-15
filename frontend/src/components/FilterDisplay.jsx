function FilterDisplay({filters, quantity, deleteFilter}){
    return <div className="flex mt-2">
          <p className="font-mono text-xl flex flex-col justify-center">{quantity} :</p> 
          {filters[quantity].map(function(item){
            return <div key={item} className="flex justify-between rounded-full px-4 border-2 font-mono font-semibold mx-2">
              <p className="mr-4 text-3xl hover:cursor-pointer" onClick={() => deleteFilter(quantity, item)}>×</p>
              <p className="pt-1 text-lg">{item}</p>
            </div>
          })}
        </div>
}

export default FilterDisplay;