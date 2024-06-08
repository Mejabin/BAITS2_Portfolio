import { useEffect, } from "react";
import p5 from "../../../assets/p5.png";

const ProductQuality = () => {
  const containerStyle = {
    clipPath: "polygon(15% 0, 100% 0, 100% 100%, 0% 100%)",
  };

  useEffect(() => {
    const startAnimation = (rocket) => {
      rocket.classList.add("rocket-fire");

      setTimeout(() => {
        rocket.classList.remove("rocket-fire");

        rocket.classList.add("rocket-return");

        setTimeout(() => {
          rocket.classList.remove("rocket-return");
        }, 1000);
      }, 2000);
    };

    const rockets = document.querySelectorAll(".rocket");
    rockets.forEach((rocket) => startAnimation(rocket));
  }, []);

  return (
    <div
      style={containerStyle}
      className="mt-12 bg-gray-200 p-4 flex flex-wrap justify-center items-center rounded-lg mb-32"
    >
      <div>
        <h1 className="mt-12 text-4xl text-center font-bold">
          The Home Of Quality
        </h1>

        <div className="grid grid-cols-4 gap-4 mt-12 justify-center">
          {[...Array(4)].map((_, index) => (
            <div key={index} className="bg-white flex flex-col items-center p-4 rounded-lg w-48">
              <img
                src={p5}
                alt="Rocket"
                className="rocket w-full h-28 rounded-lg"
              />
              <p className="mt-4 text-center font-semibold">
                No Risk, Double Guarantee
              </p>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default ProductQuality;
