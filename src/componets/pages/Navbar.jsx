import logo from "../../assets/logoTrans.png";

import { RiArrowDropDownLine } from "react-icons/ri";
import { Link } from "react-router-dom";
import { DiGithubFull } from "react-icons/di";
import CustomDropdown from "../shared/CustomDropdown";

const Navbar = () => {
  const products = [
    {
      icon: <DiGithubFull />,
      title: "Essential Addons for Elementor",
      des: "Enhance your Elementor page building experience with 80+ amazing widgets",
    },
    {
      icon: <DiGithubFull />,
      title: "Essential Addons for Elementor",
      des: "Enhance your Elementor page building experience with 80+ amazing widgets",
    },
    {
      icon: <DiGithubFull />,
      title: "Essential Addons for Elementor",
      des: "Enhance your Elementor page building experience with 80+ amazing widgets",
    },
    {
      icon: <DiGithubFull />,
      title: "Essential Addons for Elementor",
      des: "Enhance your Elementor page building experience with 80+ amazing widgets",
    },
  ];
  // const [dropdownVisible, setDropdownVisible] = useState(false);

  // // Function to show dropdown
  // const showDropdown = () => {
  //   setDropdownVisible(true);
  // };

  // // Function to hide dropdown
  // const hideDropdown = () => {
  //   setDropdownVisible(false);
  // };

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
            <Link href="/support" className="text-gray-600 hover:text-gray-400">
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
