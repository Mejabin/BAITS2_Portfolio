import logo from "../../assets/logoTrans.png";
import { useState } from "react";
import { RiArrowDropDownLine } from "react-icons/ri";
import {Link} from "react-router-dom"

const Navbar = () => {
  const [dropdownVisible, setDropdownVisible] = useState(false);

  // Function to show dropdown
  const showDropdown = () => {
    setDropdownVisible(true);
  };

  // Function to hide dropdown
  const hideDropdown = () => {
    setDropdownVisible(false);
  };

  return (
    <nav className="bg-white/80 py-8">
      <div className="mx-auto flex justify-between items-center">
        {/* Left side logo */}
        <div className="flex items-center mx-8">
          <img
            src={logo} // Path to your company logo
            alt="Company Logo"
            className="h-12 mr-4"
          />
          <span className="text-gray-600 font-bold text-lg">
            Bangladesh Associate of IT Solution
          </span>
        </div>

        <ul className="flex items-center flex-grow justify-center space-x-6 text-2xl">
          <li>
            <Link to="/" className="text-white hover:text-gray-300">
              Home
            </Link>
          </li>
          <li
            className="relative"
            onMouseEnter={showDropdown}
            onMouseLeave={hideDropdown}
          >
            <a
              href="#"
              className="dropdown-toggle text-gray-600 hover:text-gray-400 flex items-center"
            >
              Products
              {/* Conditional rendering of dropdown icon */}
              <RiArrowDropDownLine className="ml-1" />
            </a>

            {/* Dropdown content */}
            {dropdownVisible && (
              <div className="dropdown-content absolute top-full left-0 bg-white shadow-md py-2 z-10">
                <div className="grid grid-cols-4 gap-4">
                  {/* Replace these divs with your dropdown items */}
                  <div className="p-2">01</div>
                  <div className="p-2">02</div>
                  <div className="p-2">03</div>
                  <div className="p-2">04</div>
                  <div className="p-2">05</div>
                  <div className="p-2">06</div>
                  <div className="p-2">07</div>
                  <div className="p-2">08</div>
                  <div className="p-2">09</div>
                  <div className="p-2">10</div>
                </div>
              </div>
            )}
          </li>
          <li>
            <a href="/support" className="text-gray-600 hover:text-gray-400">
              Support
            </Link>
          </li>
          <li>
            <Link to="/careers" className="text-white hover:text-gray-300">
              Careers
            </Link>
          </li>
        </ul>

        <div className="mr-28 text-2xl">
          <Link to="/contact" className="text-white hover:text-gray-300 ml-6">
            Contact
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
