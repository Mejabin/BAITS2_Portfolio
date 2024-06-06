import logo from "../../assets/logoTrans.png";
import { Link } from "react-router-dom";

const Navbar = () => {
  

  

  return (
    <nav className="bg-transparent bg-opacity-90 py-8">
      <div className="mx-auto flex flex-col md:flex-row justify-between items-center">
        {/* Left side logo */}
        <div className="flex items-center mx-4 md:mx-8">
          <img src={logo} alt="Company Logo" className="h-12 mr-4" />
          <span className="text-gray-600 font-bold text-lg">
            Bangladesh Associate of IT Solution
          </span>
        </div>
        

        {/* Navigation links */}

        <div className="mr-4 md:mr-28 text-2xl">
          <Link
            to="/contact"
            className="text-black hover:text-gray-300 ml-6 block py-2"
          >
            Contact
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
