import { useState, useEffect, useRef } from "react";
import PropTypes from "prop-types";

const CustomDropdown = ({ trigger, data }) => {
  const [isOpen, setIsOpen] = useState(false);
  const dropdownRef = useRef(null);

  useEffect(() => {
    const handleClickOutside = (event) => {
      if (dropdownRef.current && !dropdownRef.current.contains(event.target)) {
        setIsOpen(false);
      }
    };

    document.addEventListener("mousedown", handleClickOutside);
    return () => {
      document.removeEventListener("mousedown", handleClickOutside);
    };
  }, []);

  const toggleDropdown = () => {
    setIsOpen(!isOpen);
  };

  return (
    <div
      ref={dropdownRef}
      className=" flex flex-col justify-center items-center z-50"
    >
      <div className="flex items-center justify-center">
        <div className="relative text-left flex items-center justify-center">
          <button
            className="bg-transparent rounded-full"
            onClick={toggleDropdown}
            type="button"
            aria-haspopup="true"
            aria-expanded={isOpen ? "true" : "false"}
            aria-controls="dropdown-menu"
          >
            <span className="bg-transparent rounded-full">{trigger}</span>
          </button>
          <div
            className={`${
              isOpen ? "opacity-100 visible " : "opacity-0 invisible"
            } dropdown-menu transition-all duration-300 transform origin-top-right -translate-y-2 scale-95`}
            id="dropdown-menu"
          >
            <div className="absolute right-0 w-[40REM]   mt-10 origin-top-right bg-white dark:bg-dark divide-y divide-gray-100 shadow-lg outline-none border-2 border-black input-primary">
              {data.map((link, idx) => (
                <div key={idx} className="flex items-center gap-4 p-3 ">
                  <div className="text-3xl">{link.icon}</div>
                  <div className="">
                    {" "}
                    <h4 className="text-2xl">{link.title}</h4>
                    <h4 className="text-sm">{link.des}</h4>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
CustomDropdown.propTypes = {
  trigger: PropTypes.element.isRequired,
  data: PropTypes.arrayOf(
    PropTypes.shape({
      url: PropTypes.string.isRequired,
      item_name: PropTypes.string.isRequired,
    })
  ).isRequired,
  title: PropTypes.string.isRequired,
  backgroundColor: PropTypes.string,
  refetchNotifications: PropTypes.func,
};

export default CustomDropdown;
