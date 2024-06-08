import logo from "../../assets/logoTrans.png";
import { Link } from "react-router-dom";
import { IoMdArrowForward } from "react-icons/io";
// import CustomDropdown from './path/to/CustomDropdown';


const Navbar = () => {
  return (
    <nav className="bg-transparent bg-opacity-90 py-6 container mx-auto  px-4 sm:px-6 lg:px-8">
      <div className="flex flex-col md:flex-row justify-between items-center">
        {/* Left side logo */}
        <div className="flex items-center gap-5">
          <img src={logo} alt="Company Logo" className="h-12 mr-4" />
          <span className=" font-light text-xl">
            Bangladesh Associate of IT Solution
          </span>
        </div>

        <ul className="flex items-center flex-grow justify-center space-x-6 text-2xl">
          <li>
            <Link to="/" className="text-gray-600 hover:text-gray-400">
              Home
            </Link>
          </li>
          <li>
            <Link to="/about" className="text-gray-600 hover:text-gray-400">
              About
            </Link>
          </li>
          <CustomDropdown
            trigger={
              <a
                href="#"
                className="dropdown-toggle text-gray-600 hover:text-gray-400 flex items-center"
              >
                Products
                {/* Conditional rendering of dropdown icon */}
                <RiArrowDropDownLine className="ml-1" />
              </a>
            }
            data={products}
          />

          <li>
            <Link to="/support" className="text-gray-600 hover:text-gray-400">
              Support
            </Link>
          </li>
          <li>
            <Link to="/careers" className="text-gray-600 hover:text-gray-400">
              Careers
            </Link>
          </li>
        </ul>

        <div className="mr-28 text-2xl">
          <Link to="/contact" className="text-black hover:text-gray-300 ml-6">
            Contact
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
