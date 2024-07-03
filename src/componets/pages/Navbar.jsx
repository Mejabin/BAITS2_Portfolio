import logo from "../../assets/logoTrans.png";
import { Link } from "react-router-dom";
import { IoMdArrowForward } from "react-icons/io";

const Navbar = () => {
  return (
    <nav className="bg-transparent bg-opacity-90 py-6 container mx-auto px-4 sm:px-6 lg:px-8">
      <div className="flex flex-col md:flex-row justify-between items-center">
        {/* Left side logo */}
        <div className="flex items-center gap-5">
          <img src={logo} alt="Company Logo" className="h-12 mr-4" />
          <span className="hidden md:inline font-light text-xl">
            Bangladesh Associate of IT Solution
          </span>
        </div>

        {/* Navigation links */}
        <div>
          <Link
            to="/contact"
            className="text-black hover:text-emerald-600 ml-6 py-2 text-xl font-light flex items-center gap-3"
          >
            <span>Contact</span>
            <IoMdArrowForward className="text-2xl -rotate-45" />
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
