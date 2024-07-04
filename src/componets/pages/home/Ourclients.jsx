import React from 'react';
import Berger from "../../../assets/Clients/images.png";
import Lams from "../../../assets/Clients/LAMS_Logo.png";
import D3 from "../../../assets/Clients/d.jpg";
import D4 from "../../../assets/Clients/E.jpg";
import Pubali from "../../../assets/Clients/pubali.jpg"

// import Pubali from "../../../assets/Clients/pubali.jpg";  

const OurClients = () => {
  const clients = [
    {
      src: "https://image.freepik.com/free-vector/luxury-letter-e-logo-design_1017-8903.jpg",
      alt: "Partner Logo 1",
    },
    {
      src: Berger,
      alt: "Berger Logo",
    },
    {
      src: Lams,
      alt: "Lams Logo",
    },
    {
      src: D3,
      alt: "D3 Logo",
    },
    {
      src: D4,
      alt: "D4 Logo",
    },
    {
      src: Pubali,
      alt: "Pubali Logo",
    },
  ];

  return (
    <div className="container mx-auto px-4 py-16">
      <h2 className="text-3xl md:text-4xl text-center font-bold mb-8">OUR CLIENTS</h2>
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4 sm:gap-6 md:gap-8">
        {clients.map((client, index) => (
          <div 
            key={index} 
            className="flex justify-center items-center p-3 border border-gray-200 shadow-md rounded-lg transition-transform transform hover:scale-105"
          >
            <img
              src={client.src}
              alt={client.alt}
              className="h-20 md:h-28 lg:h-36 mx-auto"
            />
          </div>
        ))}
      </div>
    </div>
  );
};

export default OurClients;
