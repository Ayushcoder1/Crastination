import { useState } from "react";

function FilterDropdown({quantity, setQuantity}){
    const [open, setOpen] = useState(false);
    return <>
        <button
            onClick={() => setOpen(!open)}
            className="flex items-center px-4 py-2 bg-amber-100 rounded-full hover:bg-amber-200 transition"
          >
            {quantity}
            <svg
              className={`w-4 h-4 ml-2 transform transition-transform ${
                open ? "rotate-180" : ""
              }`}
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
            >
              <path d="M19 9l-7 7-7-7" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
            </svg>
          </button>

          {open && (
            <ul className="absolute top-full mt-2 w-40 bg-white rounded-md shadow-lg z-10">
              {["Title", "Description", "Deadline", "Status"].map((opt) => (
                <li
                  key={opt}
                  onClick={() => {
                    setQuantity(opt);
                    setOpen(false);
                  }}
                  className="px-4 py-2 hover:bg-gray-100 cursor-pointer"
                >
                  {opt}
                </li>
              ))}
            </ul>
          )}
    </>
}

export default FilterDropdown;