import { GoLocation } from "react-icons/go";
import { CiMail } from "react-icons/ci";

const Footer = () => {
  return (
    <footer className="border-t-2">
      <div className="container mx-auto py-8 px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-5 text-center md:text-left">
          <div className="">
            <h3 className="text-2xl md:text-4xl font-medium">
              Please feel free to get in touch with us
            </h3>
          </div>
          <div className="flex flex-col md:flex-row items-center md:items-start gap-5">
            <GoLocation className="text-3xl mt-1 text-emerald-800" />
            <div className="space-y-3">
              <h5 className="text-xl font-semibold">Our Location</h5>
              <p>2B/5 Pallabi, Mirpur, Dhaka - 1216, Bangladesh</p>
            </div>
          </div>
          <div className="flex flex-col md:flex-row items-center md:items-start gap-5">
            <CiMail className="text-3xl mt-1 text-emerald-800" />
            <div className="space-y-3">
              <h5 className="text-xl font-semibold">How Can We Help</h5>
              <p>contact@baitsbd.com</p>
            </div>
          </div>
        </div>
      </div>

      <div className="bg-gray-800 py-4">
        <p className="text-center text-gray-400 text-sm">
          &copy; {new Date().getFullYear()} Baitsbd.com. All rights reserved.
        </p>
      </div>
    </footer>
  );
};

export default Footer;
