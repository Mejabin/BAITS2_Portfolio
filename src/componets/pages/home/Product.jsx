import m1 from '../../../assets/m1.png';
import m2 from '../../../assets/m2.png';



const Product = () => {
  return (
    <div className="bg-gray-100 text-black py-24 mt-8 p-8 ">
      <div className="container mx-auto text-center">
        <h1 className="text-4xl font-bold mb-4">Dedicated Product Company</h1>
        <h1 className="text-2xl font-bold mb-4">Enhance Your Web Building Experience</h1>
        <p className="text-lg mb-8">Explore our range of products designed to make your web development journey smoother.</p>
        <div className="flex justify-center items-center gap-36">
          <div className=" ">
            <img src={m1} alt="" className="w-96 h-72 rounded-3xl" />
          </div>
          <div className=" ">
            <img src={m2} alt="" className="w-full h-72 rounded-3xl" />
          </div>
        </div>
       <button className="bg-yellow-500 hover:bg-yellow-600 text-white font-bold py-2 px-4 rounded mt-8">
          Explore Products
        </button>
      
      </div>
    </div>
  );
};

export default Product;
