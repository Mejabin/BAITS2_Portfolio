import { Link } from "react-router-dom";
import { FaFacebookF, FaTwitter, FaLinkedinIn, FaInstagram } from "react-icons/fa";

const Footer = () => {
  return (
    <footer className="border-t-2 bg-black text-white">
      <div className="container mx-auto py-16 px-8 sm:px-6 lg:px-8">
        <div className="grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 text-center md:text-left">
          <div>
            <h1 className="uppercase font-semibold">About Us</h1>
            <p className="mt-4 text-base">
              BAITS is a leading Information Technology delivery organization. Our services include information technology, software development, and consulting services for our national clients. We have successfully delivered outstanding products and results to our commercial clients since 2006.
            </p>
          </div>
          <div className="mx-16">
            <h1 className="uppercase font-semibold ">Pages</h1>
            <div className="mt-4 space-y-2">
              <Link to="/" className="block hover:underline">Home</Link>
              <Link to="/about" className="block hover:underline">About Us</Link>
              <Link to="/contact" className="block hover:underline">Contact</Link>
              <Link to="/products" className="block hover:underline">Products</Link>
              <Link to="/web-software" className="block hover:underline">Web & Software</Link>
            </div>
          </div>
          <div className="mr-8">
            <h1 className="uppercase font-semibold">Office Address</h1>
            <p className="mt-4 text-sm">
              House 5 | Block B-2 | Pallabi | Dhaka | Bangladesh (Technical)
            </p>
            <p className="mt-2 text-sm">
              Alba Tower | 2/6 | Pallabi | Mirpur | Dhaka | Bangladesh (Corporate)
            </p>
            <p className="mt-2 text-sm">
              745 2nd Avenue 40 Street NY-10016, USA
            </p>
          </div>
          <div>
            <h1 className="uppercase font-semibold">Social Media</h1>
            <p className="mt-4 text-sm">Follow us on our social media channels:</p>
            <div className="flex space-x-4 mt-4 justify-center md:justify-start">
              <a href="#" className="hover:text-gray-400">
                <FaFacebookF size={24} />
              </a>
              <a href="#" className="hover:text-gray-400">
                <FaTwitter size={24} />
              </a>
              <a href="#" className="hover:text-gray-400">
                <FaLinkedinIn size={24} />
              </a>
              <a href="#" className="hover:text-gray-400">
                <FaInstagram size={24} />
              </a>
            </div>
          </div>
        </div>
        <div className="text-center mt-8 text-lg">
          © {new Date().getFullYear()} BAITS. All rights reserved.
        </div>
      </div>
    </footer>
  );
};

export default Footer;
