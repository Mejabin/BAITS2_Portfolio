
import product from "../../../assets/product.png";
import customer from "../../../assets/customer.png";
import pdownloads from "../../../assets/pdownloads.png";
import years from "../../../assets/years.jpeg";

const Company = () => {
  const containerStyle = {
    clipPath: "polygon(0 0, 85% 0, 100% 100%, 0% 100%)",
  };

  return (
    <div
      style={containerStyle}
      className="bg-blue-950 py-32 translate-y-9 p-4 mb-20 flex flex-wrap justify-around items-center"
    >
      <div className="flex flex-col items-center">
        <img src={years} alt="" className="w-24 h-24 rounded-3xl" />
        <p className="text-white mt-2 text-4xl">6</p>
        <p className="text-white text-2xl">Years In Business</p>
      </div>
      <div className="flex flex-col items-center">
        <img src={product} alt="" className="w-24 h-24 rounded-3xl" />
        <p className="text-white mt-2 text-4xl">30+</p>
        <p className="text-white text-2xl">WordPress Products</p>
      </div>
      <div className="flex flex-col items-center">
        <img src={customer} alt="" className="w-24 h-24 rounded-3xl" />
        <p className="text-white mt-2 text-4xl">6 Million+</p>
        <p className="text-white text-2xl">Happy Customers</p>
      </div>
      <div className="flex flex-col items-center">
        <img src={pdownloads} alt="" className="w-24 h-24 rounded-3xl" />
        <p className="text-white mt-2 text-4xl">65 Million+</p>
        <p className="text-white text-2xl">Product Downloads</p>
      </div>
    </div>
  );
};

export default Company;
