import logo from "../../assets/logoTrans.png"
import {Link} from "react-router-dom"

const Navbar = () => {
  return (
    <nav className="bg-gray-800 py-8">
      <div className=" mx-auto flex justify-between items-center">
        {/* Left side logo */}
        <div className=" items-center mx-8">
          <img
            src={logo} // Path to your company logo
            alt="Company Logo"
            className="h-12 mr-4"
          />
          <span className="text-white font-bold text-lg">Bangladesh Associate of IT Solution</span>
        </div>
        {/* Centered navigation links */}
        <ul className="flex items-center flex-grow justify-center space-x-6 text-2xl">
          <li>
            <Link to="/" className="text-white hover:text-gray-300">
              Home
            </Link>
          </li>
          <li>
            <Link to="/products" className="text-white hover:text-gray-300">
              Products
            </Link>
          </li>
          <li>
            <Link to="/support" className="text-white hover:text-gray-300">
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
