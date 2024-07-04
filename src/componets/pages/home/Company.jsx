import React from 'react';

const Company = () => {
  return (
    <div className="container mx-auto px-4 py-12">
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 justify-center items-center">
        <div className="mt-4 opacity-80 text-center">
          <h2 className="py-4 px-16 rounded-full inline-block bg-gray-200 text-6xl transition-transform transform hover:scale-105">06+</h2>
          <p className="mt-4 text-xl text-black font-bold">Years In Business</p>
        </div>
        <div className="mt-4 opacity-80 text-center">
          <h2 className="py-4 px-16 rounded-full inline-block bg-gray-300 text-6xl transition-transform transform hover:scale-105">20+</h2>
          <p className="mt-4 text-xl text-black font-bold">Software Products</p>
        </div>
        <div className="mt-4 opacity-80 text-center">
          <h2 className="py-4 px-16 rounded-full inline-block bg-gray-300 text-6xl transition-transform transform hover:scale-105">2000+</h2>
          <p className="mt-4 text-xl text-black font-bold">Happy Customers</p>
        </div>
        <div className="mt-4 opacity-80 text-center">
          <h2 className="py-4 px-16 rounded-full inline-block bg-gray-300 text-6xl transition-transform transform hover:scale-105">3000+</h2>
          <p className="mt-4 text-xl text-black font-bold">Product Downloads</p>
        </div>
      </div>
    </div>
  );
};

export default Company;


























// import { useState, useEffect, useRef } from "react";
// import product from "../../../assets/product.png";
// import customer from "../../../assets/customer.png";
// import pdownloads from "../../../assets/pdownloads.png";
// import years from "../../../assets/icons/years..jpeg";

// const Company = () => {
//   const containerRef = useRef(null);

//   const [yearsInBusiness, setYearsInBusiness] = useState(0);
//   const [wordpressProducts, setWordpressProducts] = useState(0);
//   const [happyCustomers, setHappyCustomers] = useState(0);
//   const [productDownloads, setProductDownloads] = useState(0);

//   useEffect(() => {
//     const increment = (setState, target, incrementBy) => {
//       const interval = setInterval(() => {
//         setState((prev) => {
//           if (prev + incrementBy >= target) {
//             clearInterval(interval);
//             return target;
//           }
//           return prev + incrementBy;
//         });
//       }, 50);
//     };

//     const handleScroll = (entries) => {
//       entries.forEach((entry) => {
//         if (entry.isIntersecting) {
//           increment(setYearsInBusiness, 20, 1);
//           increment(setWordpressProducts, 31, 1);
//           increment(setHappyCustomers, 600000, 10000);
//           increment(setProductDownloads, 6500000, 100000);
//         }
//       });
//     };

//     const observer = new IntersectionObserver(handleScroll, {
//       root: null,
//       rootMargin: "0px",
//       threshold: 0.5,
//     });

//     const currentRef = containerRef.current;

//     if (currentRef) {
//       observer.observe(currentRef);
//     }

//     return () => {
//       if (currentRef) {
//         observer.unobserve(currentRef);
//       }
//     };
//   }, []);

//   return (
//     <div
//       ref={containerRef}
//       className="bg-blue-950 py-32 translate-y-9 p-12 mb-20 flex flex-wrap justify-around items-center"
//       className="bg-blue-950 py-16 md:py-32 px-4 mb-20 flex flex-wrap justify-around items-center"
//     >
//       <div className="flex flex-col items-center mb-8 md:mb-0">
//         <img src={years} alt="" className="w-20 h-20 md:w-24 md:h-24 rounded-3xl" />
//         <p className="text-white mt-2 text-2xl md:text-4xl">{yearsInBusiness}</p>
//         <p className="text-white text-lg md:text-2xl">Years In Business</p>
//       </div>
//       <div className="flex flex-col items-center mb-8 md:mb-0">
//         <img src={product} alt="" className="w-20 h-20 md:w-24 md:h-24 rounded-3xl" />
//         <p className="text-white mt-2 text-2xl md:text-4xl">{wordpressProducts}+</p>
//         <p className="text-white text-lg md:text-2xl">Software Products</p>
//       </div>
//       <div className="flex flex-col items-center mb-8 md:mb-0">
//         <img src={customer} alt="" className="w-20 h-20 md:w-24 md:h-24 rounded-3xl" />
//         <p className="text-white mt-2 text-2xl md:text-4xl">
//           {happyCustomers.toLocaleString()}+
//         </p>
//         <p className="text-white text-lg md:text-2xl">Happy Customers</p>
//       </div>
//       <div className="flex flex-col items-center mb-8 md:mb-0">
//         <img src={pdownloads} alt="" className="w-20 h-20 md:w-24 md:h-24 rounded-3xl" />
//         <p className="text-white mt-2 text-2xl md:text-4xl">
//           {productDownloads.toLocaleString()}+
//         </p>
//         <p className="text-white text-lg md:text-2xl">Product Downloads</p>
//       </div>
//     </div>
//   );
// };

// export default Company;
