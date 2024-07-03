import logo from "../../assets/logoTrans.png";
import { Link } from "react-router-dom";
import { IoMdArrowForward } from "react-icons/io";

const Navbar = () => {
  const handleExternalLink = (url) => {
    window.location.href = url;
  };

  return (
    <nav className="bg-transparent bg-opacity-90 py-6 container mx-auto px-4 sm:px-6 lg:px-8">
      <div className="flex flex-col md:flex-row justify-between items-center">
        {/* Left side logo */}
        <div className="flex items-center gap-5">
          <Link to="#" onClick={() => handleExternalLink("https://www.baitsbd.com/")}>
            <img src={logo} alt="Company Logo" className="h-16 mr-4 cursor-pointer" />
          </Link>
          <span className="font-light text-xl">
            Bangladesh Associate of IT Solution
          </span>
        </div>

        {/* Navigation links */}
        <div className="">
          <Link
            to="#"
            onClick={() => handleExternalLink("https://www.baitsbd.com/contact/")}
            className="text-black hover:text-emerald-600 ml-6 py-4 text-2xl font-semibold flex items-center gap-3 rounded-full px-8 bg-gray-300"
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
