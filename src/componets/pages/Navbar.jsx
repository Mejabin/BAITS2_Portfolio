import logo from "../../assets/logoTrans.png"

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
            <a to="/" className="text-white hover:text-gray-300">
              Home
            </a>
          </li>
          <li>
            <a to="/products" className="text-white hover:text-gray-300">
              Products
            </a>
          </li>
          <li>
            <a to="/support" className="text-white hover:text-gray-300">
              Support
            </a>
          </li>
          <li>
            <a to="/careers" className="text-white hover:text-gray-300">
              Careers
            </a>
          </li>
        </ul>
        
        <div className="mr-28 text-2xl">
          <a to="/login" className="text-white hover:text-gray-300 ml-6">
            Login
          </a>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
