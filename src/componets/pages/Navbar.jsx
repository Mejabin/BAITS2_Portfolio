import logo from "../../assets/logoTrans.png";
import { Link } from "react-router-dom";
import { IoMdArrowForward } from "react-icons/io";

const Navbar = () => {
  return (
    <nav className="bg-transparent bg-opacity-90 py-8 container mx-auto">
      <div className="flex flex-col md:flex-row justify-between items-center">
        {/* Left side logo */}
        <div className="flex items-center gap-5">
          <img src={logo} alt="Company Logo" className="h-12 mr-4" />
          <span className=" font-light text-xl">
            Bangladesh Associate of IT Solution
          </span>
        </div>

        {/* Navigation links */}

        <div className="">
          <Link
            to="/contact"
            className="text-black hover:text-emerald-600 ml-6  py-2 text-xl font-light flex items-center gap-3"
          >
            <span> Contact </span>
            <IoMdArrowForward className="text-2xl -rotate-45" />
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
