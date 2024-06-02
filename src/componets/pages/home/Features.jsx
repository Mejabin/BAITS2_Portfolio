
import p1 from '../../../assets/p1.jpeg';
import p2 from '../../../assets/p2.png';
import p3 from '../../../assets/p3.jpeg';
import p4 from '../../../assets/p4.jpeg';

const Features = () => {
  return (
    <div className="mt-16">
      <h1 className="text-6xl text-center font-bold">
        Featured Products
      </h1>
      <p className="text-center text-lg mt-4 font-semibold">
        Over 6 Million+ clients use our products to build & grow their websites
      </p>
      <div className="mt-4 p-4 flex flex-col md:flex-row justify-center items-center gap-8">
      <div className="bg-gray-200 p-4 rounded-lg w-72 h-full">
        <img src={p1} alt="" className="w-full h-40 rounded-lg" />
        <div className='mt-12 text-justify'>
        <p className="mt-4 text-center text-xl  font-semibold">Product 1 Description</p>
        <p className="mt-4 text-center font-semibold">Product stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection.</p>
        </div>
      </div>
      <div className="bg-gray-200 p-4 rounded-lg w-72 h-full">
        <img src={p2} alt="" className="w-full h-40 rounded-lg" />
        <div className='mt-12 text-justify'>
        <p className="mt-4 text-center text-xl  font-semibold">Product 2 Description</p>
        <p className="mt-4 text-center font-semibold">Product stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection.</p>
        </div>
      </div>
      <div className="bg-gray-200 p-4 rounded-lg w-72 h-full">
        <img src={p3} alt="" className="w-full h-40 rounded-lg" />
        <div className='mt-12 text-justify'>
        <p className="mt-4 text-center text-xl  font-semibold">Product 3 Description</p>
        <p className="mt-4 text-center font-semibold">Product stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection.</p>
        </div>
      </div>
      <div className="bg-gray-200 p-4 rounded-lg w-72 h-full">
        <img src={p4} alt="" className="w-full h-40 rounded-lg" />
        <div className='mt-12 text-justify'>
        <p className="mt-4 text-center text-xl  font-semibold">Product 4 Description</p>
        <p className="mt-4 text-center font-semibold">Product stock images in HD and millions of other royalty-free stock photos, illustrations and vectors in the Shutterstock collection.</p>
        </div>
      </div>
    </div>
    </div>
  );
};

export default Features;
