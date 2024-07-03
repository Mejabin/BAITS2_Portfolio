import { useEffect } from "react";
// import Nedubd from "./../../../assets/Nedubd.png";
import Back from "./../../../assets/Back.jpg";
import Front from "./../../../assets/front.jpg";
import Heading from "../../shared/Heading";

const Product = () => {
  useEffect(() => {
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
  }, []);

  return (
    <section>
      <div className="container mx-auto py-6 px-4 sm:px-6 lg:px-8">
        {/* <Heading text={"NEDUBD"} /> */}
        <h1 className="text-center text-3xl font-bold ">NEDUBD</h1>
      </div>
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
              <h1 className="text-3xl text-end uppercase"> Our ERP System</h1>
              <p className="text-end text-sm">
                NEDUBD is an educational institute management software aimed to
                make administrative works of your institutions easy & smart. It
                helps the administrators and teachers to perform their daily
                activities smoothly and keep an eye on several other functions
                of an institution so that it runs successfully. Moreover,
                guardians remain up to date with their children’s progress. and
                Student module allows Smartly keep your class & school
                activities Easily and Effortlessly. NEDUBD is best suited to
                institutions
              </p>
            </div>
            <img src={Front} alt="Duotone" />
          </div>
        </div>

        <div className="handle"></div>
      </div>
    </section>
  );
};

export default Product;
