import { useState } from "react";
import { FaQuoteLeft, FaQuoteRight } from "react-icons/fa";
import femaleImage from "../../../assets/female.jpeg";
import Berger from "../../../assets/abhijit-roy.jpg";
import client from "../../../assets/Client.jpeg";

const TestimonialPage = () => {
  const testimonials = [
    {
      message:
        "Some of our clients have seen a 62% increase in response rate with texting!",
      image: femaleImage,
    },
    {
      message:
        "Hi, Jack. Welcome! You'll be the first to know about deals, new products, and more",
      image: client,
    },
    {
      message:
        "Some of our clients have seen a 62% increase in response rate with texting!",
      image: Berger,
    },
  ];

  const [currentTestimonialIndex, setCurrentTestimonialIndex] = useState(0);

  const goToPreviousTestimonial = () => {
    setCurrentTestimonialIndex((prevIndex) =>
      prevIndex === 0 ? testimonials.length - 1 : prevIndex - 1
    );
  };

  const goToNextTestimonial = () => {
    setCurrentTestimonialIndex((prevIndex) =>
      prevIndex === testimonials.length - 1 ? 0 : prevIndex + 1
    );
  };

  return (
    <div className="bg-gray-300 p-12 mb-4 border rounded-lg flex flex-col items-center">
      <h1 className="text-4xl text-center">Testimonials</h1>
      <p className="text-2xl text-center mt-2">See! What Our Clients Say</p>
      <div className="flex items-center mt-8 space-x-8">
        <button
          className="font-bold text-4xl h-16 w-16 flex justify-center items-center"
          onClick={goToPreviousTestimonial}
        >
          &#8592;
        </button>
        <div className="flex flex-col items-center">
          <img
            src={testimonials[currentTestimonialIndex].image}
            alt="Client"
            className="h-80 w-80 mb-4 rounded-full"
          />
          <div className="text-justify p-4 border rounded-lg h-24 overflow-hidden text-ellipsis flex items-center space-x-2">
            <FaQuoteLeft className="text-gray-400 text-2xl" />
            <p className="flex-1">
              {testimonials[currentTestimonialIndex].message}
            </p>
            <FaQuoteRight className="text-gray-400 text-2xl" />
          </div>
        </div>
        <button
          className="font-bold text-4xl h-16 w-16 flex justify-center items-center"
          onClick={goToNextTestimonial}
        >
          &#8594;
        </button>
      </div>
    </div>
  );
};

export default TestimonialPage;
