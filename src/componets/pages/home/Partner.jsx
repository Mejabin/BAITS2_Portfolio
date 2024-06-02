// import React from "react";
// import Marquee from "react-marquee-slider";
// import gle from "../../../assets/gle.png";

// const Partner = () => {
//   const clients = [
//     { src: gle, alt: "Client 1" },
//     { src: gle, alt: "Client 2" },
//     { src: gle, alt: "Client 3" },
//     { src: gle, alt: "Client 4" },
//     // Add more client logos as needed
//   ];

//   return (
//     <div>
//       <h1 className="text-4xl font-bold text-white text-center bg-black bg-opacity-50 p-4 rounded">
//         Partners
//       </h1>
//       <div className="bg-gray-100 py-10">
//         <h2 className="text-2xl font-bold text-center mb-8">Our Clients</h2>
//         <div className="container mx-auto overflow-hidden">
//           <Marquee velocity={25} minScale={0.7} resetAfterTries={200} scatterRandomly>
//             {clients.map((client, index) => (
//               <div
//                 key={index}
//                 className="flex items-center justify-center p-4 bg-white rounded shadow mx-4"
//               >
//                 <img src={client.src} alt={client.alt} className="h-16"/>
//               </div>
//             ))}
//           </Marquee>
//         </div>
//       </div>
//     </div>
//   );
// };

// export default Partner;
