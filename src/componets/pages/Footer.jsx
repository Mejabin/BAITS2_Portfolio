// import { Link } from "react-router-dom";

// import logo from "../../assets/logoTrans.png"
// import { FaFacebookF, FaTwitter, FaInstagram, FaLinkedinIn } from "react-icons/fa";

// const Footer = () => {
//   return (
//     <footer className="">
//       <div className=" mx-auto text-center text-white bg-sky-950 py-8" >
//       <div className=" mx-auto text-center text-white bg-sky-950 py-8" >
//         <div className="flex flex-col md:flex-row justify-between items-center">
//           {/* Left section: Company information */}

//           <div className="mb-4 mx-4 ">
//             <img
//               src={logo}// Path to your company logo
//               alt="Company Logo"
//               className="h-12 mx-auto md:mx-0"
//             />

//           </div>
//           <div className="flex justify-center gap-8">
//             <nav className="mb-6">
//             <Link className="link link-hover">Address </Link>
//             </nav>
//             <div>
//             <div className="mb-6">
//             <Link className="link link-hover">Phone</Link>
//             </div>

//             </div>
//             <div>
//               <p>Email</p>
//             </div>
//           </div>

//           <div className="mr-12">
//             <ul className="flex justify-center gap-4 ">
//               <li>
//                 <Link href="#" className="hover:text-gray-400">
//                   <FaFacebookF size={24} />
//                 </Link>
//               </li>
//               <li>
//                 <Link href="#" className="hover:text-gray-400">
//                   <FaTwitter size={24} />
//                 </Link>
//               </li>
//               <li>
//                 <Link href="#" className="hover:text-gray-400">
//                   <FaInstagram size={24} />
//                 </Link>
//               </li>
//               <li>
//                 <Link href="#" className="hover:text-gray-400">
//                   <FaLinkedinIn size={24} />
//                 </Link>
//               </li>
//             </ul>
//           </div>

//         </div>
//       </div>

//       </div>
//       <div className="bg-gray-100 ">
//         <Link>
//         <p className="mt-2 text-center text-2xl">
//             &copy; {new Date().getFullYear()} Baitsbd.com. All rights reserved.
//           </p>
//           </Link>

//     </div>
//     </footer>

//   );
// };

// export default Footer
import { GoLocation } from "react-icons/go";
import { CiMail } from "react-icons/ci";
import { Link } from "react-router-dom";
import logo from "../../assets/logoTrans.png";
import {
  FaFacebookF,
  FaTwitter,
  FaInstagram,
  FaLinkedinIn,
} from "react-icons/fa";

const Footer = () => {
  return (
    <footer className="border-t-2">
      <div className="container mx-auto py-16 px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-3 gap-5">
          <div className="">
            <h3 className="text-4xl font-medium">
              Please feel free to get in touch with us
            </h3>
          </div>
          <div className="flex items-start  gap-5 ">
            <GoLocation className="text-3xl mt-1 text-emerald-800" />
            <div className="space-y-3">
              <h5 className="text-xl font-semibold ">Our Location</h5>
              <p className="">2B/5 Pallabi, Mirpur, Dhaka - 1216, Bangladesh</p>
            </div>
          </div>
          <div className="flex items-start  gap-5 ">
            <CiMail className="text-3xl mt-1 text-emerald-800" />
            <div className="space-y-3">
              <h5 className="text-xl font-semibold ">How Can We Help</h5>
              <p className="">2B/5 Pallabi, Mirpur, Dhaka - 1216, Bangladesh</p>
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
