import  { useState } from 'react';
import femaleImage from "../../../assets/female.jpeg";

const TestimonialPage = () => {
  const testimonials = [
    {
      message: "Some of our clients have seen a 62% increase in response rate with texting!",
      image: femaleImage 
    },
    {
      message: "Some of our clients have seen a 62% increase in response rate with texting!",
      image: femaleImage
    },
    {
      message: "Some of our clients have seen a 62% increase in response rate with texting!",
      image: femaleImage
    },
    
  ];

  const [currentTestimonialIndex, setCurrentTestimonialIndex] = useState(0);

  const goToPreviousTestimonial = () => {
    setCurrentTestimonialIndex((prevIndex) => (prevIndex === 0 ? testimonials.length - 1 : prevIndex - 1));
  };

  const goToNextTestimonial = () => {
    setCurrentTestimonialIndex((prevIndex) => (prevIndex === testimonials.length - 1 ? 0 : prevIndex + 1));
  };

  return (
    <div className='bg-gray-100 p-4'>
        <h1 className='text-4xl text-center'>
            Testimonials
        </h1>
        <p className='text-4xl text-center'>See! What Say Our Clients</p>
        <div className="flex justify-center items-center" >
      <div className=" mt-8">
        <img src={testimonials[currentTestimonialIndex].image} alt="" className='h-44 w-44' />
        <p>{testimonials[currentTestimonialIndex].message}</p>
      </div>
      <div className="navigation ">
        <button className='font-bold gap-8' onClick={goToPreviousTestimonial}>&#8592; Previous</button>
        <button className='font-bold' onClick={goToNextTestimonial}>Next &#8594;</button>
      </div>
    </div>

    </div>
  );
};

export default TestimonialPage;
