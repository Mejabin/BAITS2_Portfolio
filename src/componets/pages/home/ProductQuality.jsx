import p5 from "../../../assets/p5.png";



const ProductQuality = () => {
  const containerStyle = {
    clipPath: "polygon(0% 0%, 100% 0%, 100% 100%, 0% 100%)",
  };

  return (
    <div
      style={containerStyle}
      className="mt-12 bg-gray-200 p-4 flex flex-wrap justify-center items-center rounded-b-full mb-32"
    >
      <div>
        <h1 className="mt-12 text-4xl text-center font-bold">The Home Of Quality</h1>
        
        <div className="grid grid-cols-4 gap-4 mt-12 justify-center">
          {/* First Div */}
          <div className="bg-white flex flex-col items-center p-4 rounded-lg w-48">
            <img src={p5} alt="Product 1" className="w-full h-28 rounded-lg" />
            <p className="mt-4 text-center font-semibold">No Risk, Double Guarantee</p>
          </div>

          {/* Second Div */}
          <div className="bg-white flex flex-col items-center p-4 rounded-lg w-48">
            <img src={p5} alt="Product 2" className="w-full h-28 rounded-lg" />
            <p className="mt-4 text-center font-semibold">Product 2 Description</p>
          </div>

          {/* Third Div */}
          <div className="bg-white flex flex-col items-center p-4 rounded-lg w-48">
            <img src={p5} alt="Product 3" className="w-full h-28 rounded-lg" />
            <p className="mt-4 text-center font-semibold">Product 3 Description</p>
          </div>

          {/* Fourth Div */}
          <div className="bg-white flex flex-col items-center p-4 rounded-lg w-48">
            <img src={p5} alt="Product 4" className="w-full h-28 rounded-lg" />
            <p className="mt-4 text-center font-semibold">Product 4 Description</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ProductQuality;
