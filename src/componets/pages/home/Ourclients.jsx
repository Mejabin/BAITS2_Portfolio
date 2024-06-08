import { useEffect, useRef } from "react";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import Slider from "react-slick";
import Berger from "../../../assets/Clients/images.png";
import Lams from "../../../assets/Clients/LAMS_Logo.png";
import C3 from "../../../assets/Clients/c3.jpg";
import D3 from "../../../assets/Clients/d.jpg";
import D4 from "../../../assets/Clients/E.jpg";
import D5 from "../../../assets/Clients/E1.jpg";

const OurClients = () => {
  const sliderRef = useRef(null);

  useEffect(() => {
    if (sliderRef.current) {
      sliderRef.current.slickGoTo(0); // Reset slider to the first slide
    }
  }, []);

  const settings = {
    slidesToShow: 6,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 1500,
    arrows: false,
    dots: false,
    pauseOnHover: false,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 4,
        },
      },
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 3,
        },
      },
      {
        breakpoint: 520,
        settings: {
          slidesToShow: 2,
        },
      },
    ],
  };

  return (
    <div className="container">
      <h2 className="mt-12 text-4xl text-center font-bold">Our Partners</h2>
      <Slider ref={sliderRef} {...settings}>
        <div className="slide">
          <img
            src="https://image.freepik.com/free-vector/luxury-letter-e-logo-design_1017-8903.jpg"
            alt="Partner Logo"
          />
        </div>
        <div className="slide">
          <img src={Berger} alt="Partner Logo" />
        </div>
        <div className="slide">
          <img src={Lams} alt="Partner Logo" />
        </div>
        <div className="slide">
          <img src={C3} alt="Partner Logo" />
        </div>
        <div className="slide">
          <img src={D3} alt="Partner Logo" />
        </div>
        <div className="slide">
          <img src={D4} alt="Partner Logo" />
        </div>
        <div className="slide">
          <img src={D5} alt="Partner Logo" />
        </div>
        
      </Slider>
    </div>
  );
};

export default OurClients;
