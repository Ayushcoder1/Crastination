import { useAtom, useSetAtom } from "jotai";
import { useRef, useState, useEffect } from "react";
import { fetch_filter_data_atom, filtersAtom } from "../store/atoms";
import Input from "./Input";
import Deadline_Input from "./Deadline_Input";
import FilterDropdown from "./FilterDropdown";
import FilterDisplay from "./FilterDisplay";

function Filter() {
  const [quantity, setQuantity] = useState("Title");
  const [filters, setFilters] = useAtom(filtersAtom)
  const inputRef = useRef();
  const d1 = useRef();
  const d2 = useRef();
  const fetch_filter_data = useSetAtom(fetch_filter_data_atom);

  const placeholderText =
    quantity === "Title" || quantity === "Description"
      ? "Search text…"
      :"true/false";


  useEffect(() => {
    fetch_filter_data();
  }, [filters]);

  const handleSubmit = () => {
    let val;
    if(quantity == "Deadline"){
      // const date1 = new Date(d1.current.value).getTime();
      // const date2 = new Date(d2.current.value).getTime();
      const date = d1.current.value + "~" + d2.current.value;
      val = date;
    }
    else val = inputRef.current.value;
    if(val == "") return;
    setFilters(prev => {
      if (prev[quantity].includes(val)) return prev;

      return {
        ...prev,                                    
        [quantity]: [...prev[quantity], val],
      };
    });
    // inputRef.current.value = "";
  };

  const deleteFilter = (key, val) => {
    setFilters(prev => ({
      ...prev,
      [key]: prev[key].filter(item => item !== val),
    }));
  };

  return (
    <div>
      <div className="flex justify-between items-center gap-4 p-4 bg-black rounded-lg shadow-lg text-lg font-serif">
        {
          quantity != 'Deadline' &&
          <Input inputRef={inputRef} placeholderText={placeholderText}/>
        }
        {
          quantity == 'Deadline' &&
          <Deadline_Input d1={d1} d2={d2} />
        }

        <div className="flex gap-4">
          <div className="relative">
            <FilterDropdown setQuantity={setQuantity} quantity={quantity}/>
          </div>

          <button
            onClick={handleSubmit}
            className="px-5 py-2 bg-amber-100 rounded-full hover:bg-amber-200 transition">
            Add
          </button>
        </div>
      </div>

      <div className=" bg-blue-50 shadow-lg p-2 rounded-xl">
        <FilterDisplay filters={filters} quantity={"Title"} deleteFilter={deleteFilter} />
        <FilterDisplay filters={filters} quantity={"Description"} deleteFilter={deleteFilter} />
        <FilterDisplay filters={filters} quantity={"Status"} deleteFilter={deleteFilter} />
        <FilterDisplay filters={filters} quantity={"Deadline"} deleteFilter={deleteFilter} />
      </div>
    </div>
  );
}

export default Filter;