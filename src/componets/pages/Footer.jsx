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
import { Link } from "react-router-dom";
import logo from "../../assets/logoTrans.png";
import { FaFacebookF, FaTwitter, FaInstagram, FaLinkedinIn } from "react-icons/fa";

const Footer = () => {
  return (
    <footer className="bg-sky-950">
      <div className="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
        <div className="flex flex-col md:flex-row justify-between items-center">
          {/* Left section: Company information */}
          <div className="mb-4 md:mb-0">
            <img
              src={logo}
              alt="Company Logo"
              className="h-12 mx-auto md:mx-0"
            />
          </div>

          {/* Center section: Contact information */}
          <div className="flex flex-col md:flex-row justify-center items-center mb-4 md:mb-0">
            <nav className="mb-4 md:mb-0 md:mr-8">
              <Link className="link link-hover">Address</Link>
            </nav>
            <div className="mb-4 md:mb-0 md:mr-8">
              <Link className="link link-hover">Phone</Link>
            </div>
            <div>
              <p>Email</p>
            </div>
          </div>

          {/* Right section: Social media links */}
          <div className="mr-4 md:mr-0">
            <ul className="flex justify-center gap-4">
              <li>
                <Link href="#" className="hover:text-gray-400">
                  <FaFacebookF size={24} />
                </Link>
              </li>
              <li>
                <Link href="#" className="hover:text-gray-400">
                  <FaTwitter size={24} />
                </Link>
              </li>
              <li>
                <Link href="#" className="hover:text-gray-400">
                  <FaInstagram size={24} />
                </Link>
              </li>
              <li>
                <Link href="#" className="hover:text-gray-400">
                  <FaLinkedinIn size={24} />
                </Link>
              </li>
            </ul>
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