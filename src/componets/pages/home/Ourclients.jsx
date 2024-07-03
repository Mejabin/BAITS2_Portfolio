import { useEffect, useRef } from "react";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import Slider from "react-slick";
import Berger from "../../../assets/Clients/images.png";
import Lams from "../../../assets/Clients/LAMS_Logo.png";
// import C3 from "../../../assets/Clients/c3.jpg";
import D3 from "../../../assets/Clients/d.jpg";
import D4 from "../../../assets/Clients/E.jpg";
// import D5 from "../../../assets/Clients/E1.jpg";

const OurClients = () => {
  const sliderRef = useRef(null);

  useEffect(() => {
    if (sliderRef.current) {
      sliderRef.current.slickGoTo(0);
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
      {
        breakpoint: 320,
        settings: {
          slidesToShow: 1,
        },
      },
    ],
  };

  return (
    <div className="container mx-auto px-4 py-12">
      <h2 className="mt-12 text-3xl md:text-4xl text-center font-bold">OUR CLIENTS </h2>
      <Slider ref={sliderRef} {...settings}>
        <div className="slide p-4">
          <img
            src="https://image.freepik.com/free-vector/luxury-letter-e-logo-design_1017-8903.jpg"
            alt="Partner Logo"
            className="mx-auto"
          />
        </div>
        <div className="slide p-4">
          <img src={Berger} alt="Partner Logo" className="mx-auto" />
        </div>
        <div className="slide p-4">
          <img src={Lams} alt="Partner Logo" className="mx-auto" />
        </div>
        <div className="slide p-4">
          <img src={Berger} alt="Partner Logo" className="mx-auto" />
        </div>
        <div className="slide p-4">
          <img src={D3} alt="Partner Logo" className="mx-auto" />
        </div>
        <div className="slide p-4">
          <img src={Berger} alt="Partner Logo" className="mx-auto" />
        </div>
        <div className="slide p-4">
          <img src={D4} alt="Partner Logo" className="mx-auto" />
        </div>
      </Slider>
    </div>
  );
};

export default OurClients;
