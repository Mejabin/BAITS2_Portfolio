import { useEffect, useState } from "react";
import Back from "./../../../assets/Back.jpg";
import Front from "./../../../assets/front.jpg";
import Heading from "../../shared/Heading";

const Product = () => {
  const [isMobile, setIsMobile] = useState(window.innerWidth < 768);

  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth < 768);
    };

    window.addEventListener("resize", handleResize);

    return () => {
      window.removeEventListener("resize", handleResize);
    };
  }, []);

  useEffect(() => {
    if (!isMobile) {
      const parent = document.querySelector(".splitview");
      const topPanel = parent.querySelector(".top");
      const handle = parent.querySelector(".handle");
      let skewHack = 0;
      let delta = 0;

      if (parent.classList.contains("skewed")) {
        skewHack = 1000;
      }

      const handleMouseMove = (event) => {
        delta = (event.clientX - window.innerWidth / 2) * 0.5;

        handle.style.left = event.clientX + delta + "px";

        topPanel.style.width = event.clientX + skewHack + delta + "px";
      };

      parent.addEventListener("mousemove", handleMouseMove);

      return () => {
        parent.removeEventListener("mousemove", handleMouseMove);
      };
    }
  }, [isMobile]);

  return (
    <section>
      <div className="container mx-auto py-6 px-4 sm:px-6 lg:px-8">
        {/* <Heading text={"NEDUBD"} /> */}
        <h1 className="text-center text-3xl font-bold ">NEDUBD</h1>
      </div>
      {isMobile ? (
        <div className="flex flex-col items-center">
          <img src={Back} alt="Original" className="w-full" />
          <div className="text-center p-4">
            <h1 className="text-3xl">NEDUBD</h1>
            <p className="text-sm">
              We are the pioneers of innovation in education management
              software. Discover with us the possibilities of your school,
              College, Madrasha, Polytechnic, Mats/IHT,or University.
            </p>
          </div>
          <img src={Front} alt="Duotone" className="w-full" />
          <div className="text-center p-4">
            <h1 className="text-3xl uppercase">Our ERP System</h1>
            <p className="text-sm">
              NEDUBD is an educational institute management software aimed to
              make administrative works of your institutions easy & smart. It
              helps the administrators and teachers to perform their daily
              activities smoothly and keep an eye on several other functions of
              an institution so that it runs successfully. Moreover, guardians
              remain up to date with their children’s progress. and Student
              module allows Smartly keep your class & school activities Easily
              and Effortlessly. NEDUBD is best suited to institutions.
            </p>
          </div>
        </div>
      ) : (
        <div className="splitview skewed">
          <div className="panel bottom">
            <div className="content">
              <div className="description">
                <h1 className="text-3xl text-start">NEDUBD</h1>
                <p className="text-start text-sm">
                  We are the pioneers of innovation in education management
                  software. Discover with us the possibilities of your school,
                  College, Madrasha, Polytechnic, Mats/IHT,or University.
                </p>
              </div>
              <img src={Back} alt="Original" />
            </div>
          </div>

          <div className="panel top">
            <div className="content">
              <div className="description space-y-6">
                <h1 className="text-3xl text-end uppercase">Our ERP System</h1>
                <p className="text-end text-sm">
                  NEDUBD is an educational institute management software aimed
                  to make administrative works of your institutions easy &
                  smart. It helps the administrators and teachers to perform
                  their daily activities smoothly and keep an eye on several
                  other functions of an institution so that it runs
                  successfully. Moreover, guardians remain up to date with their
                  children’s progress. and Student module allows Smartly keep
                  your class & school activities Easily and Effortlessly. NEDUBD
                  is best suited to institutions.
                </p>
              </div>
              <img src={Front} alt="Duotone" />
            </div>
          </div>

          <div className="handle"></div>
        </div>
      )}
    </section>
  );
};

export default Product;
