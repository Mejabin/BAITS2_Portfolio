import React, { useState } from 'react';
import { IoMdArrowForward } from "react-icons/io";
import { Link } from 'react-router-dom';
import logo from "../../assets/logoTrans.png";

const Navbar = () => {
  const [isOpen, setIsOpen] = useState(false);
  const handleExternalLink = (url) => {
    window.location.href = url;
  };

  return (
    <nav className="bg-transparent bg-opacity-90 py-6 container mx-auto px-4 sm:px-6 lg:px-8">
      <div className="flex flex-col md:flex-row justify-between items-center">
        {/* Left side logo */}
        <div className="flex items-center gap-5">
          <a href="https://www.baitsbd.com/">
            <img src={logo} alt="Company Logo" className="h-20 mr-4 cursor-pointer" />
          </a>
        </div>
        <div className="hidden md:flex space-x-4 items-center gap-2 text-xl font-bold">
          <Link to="/" className="text-black hover:text-gray-300">Home</Link>
          <button 
            onClick={() => handleExternalLink("https://www.baitsbd.com/#services")}
            className="block text-black hover:text-gray-300 px-4 py-2"
          >
            Services
          </button>
          <Link to="/web-software" className="text-black hover:text-gray-300">Web & Software</Link>
          <button 
            onClick={() => handleExternalLink("https://www.baitsbd.com/products/")}
            className="block text-black hover:text-gray-300 px-4 py-2"
          >
            Products
          </button>
          <button 
            onClick={() => handleExternalLink("https://www.baitsbd.com/about-us/")}
            className="block text-black hover:text-gray-300 px-4 py-2"
          >
            About Us
          </button>
          <button
            onClick={() => handleExternalLink("https://www.baitsbd.com/contact/")}
            className="text-black hover:text-emerald-600 ml-6 py-3 px-8 text-xl font-light flex items-center gap-3 rounded-full bg-gray-300"
          >
            <span>Contact</span>
            <IoMdArrowForward className="text-2xl -rotate-45" />
          </button>
        </div>
        <div className="md:hidden flex items-center">
          <button onClick={() => setIsOpen(!isOpen)} className="text-black">
            <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d={isOpen ? "M6 18L18 6M6 6l12 12" : "M4 6h16M4 12h16m-7 6h7"} />
            </svg>
          </button>
        </div>
      </div>
      {isOpen && (
        <div className="md:hidden mt-4">
          <Link to="/" className="block text-black hover:text-gray-700 px-4 py-2">Home</Link>
          <button 
            onClick={() => handleExternalLink("https://www.baitsbd.com/#services")}
            className="block text-black hover:text-gray-700 px-4 py-2"
          >
            Services
          </button>
          <Link to="/web-software" className="block text-black hover:bg-gray-700 px-4 py-2">Web & Software</Link>
          <button 
            onClick={() => handleExternalLink("https://www.baitsbd.com/products/")}
            className="block text-black hover:bg-gray-700 px-4 py-2"
          >
            Products
          </button>
          <button 
            onClick={() => handleExternalLink("https://www.baitsbd.com/about-us/")}
            className="block text-black hover:bg-gray-700 px-4 py-2"
          >
            About Us
          </button>
          <button
            onClick={() => handleExternalLink("https://www.baitsbd.com/contact/")}
            className="block text-black hover:text-emerald-600 ml-6 py-3 px-8 text-xl font-bold items-center gap-4 rounded-full bg-gray-300 mt-4"
          >
            <span className='text-xl'>Contact</span>
            <IoMdArrowForward className="text-2xl -rotate-45" />
          </button>
        </div>
      )}
    </nav>
  );
};

export default Navbar;
