
// import Background from "../../../assets/Background.jpg";

const Ourclients = () => {
  return (
    <div>
      {/* <div
        className="bg-cover bg-center h-96 flex items-center justify-center"
        style={{ backgroundImage: `url(${Background})` }}
      >
        <h1 className="text-4xl font-bold text-black text-center  bg-opacity-50 p-4 rounded uppercase">
          Clients & Partners
        </h1>
      </div> */}
      <div className="bg-gray-100 py-8">
        <h2 className="text-2xl font-bold text-center mb-8">Our Clients</h2>
        <div className="container mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          <div className="flex items-center justify-center p-4 bg-white rounded shadow">
            <img src="/path-to-client-logo1.png" alt="Client 1" className="h-16"/>
          </div>
          <div className="flex items-center justify-center p-4 bg-white rounded shadow">
            <img src="/path-to-client-logo2.png" alt="Client 2" className="h-16"/>
          </div>
          <div className="flex items-center justify-center p-4 bg-white rounded shadow">
            <img src="/path-to-client-logo3.png" alt="Client 3" className="h-16"/>
          </div>
          <div className="flex items-center justify-center p-4 bg-white rounded shadow">
            <img src="/path-to-client-logo4.png" alt="Client 4" className="h-16"/>
          </div>
          {/* Add more client logos as needed */}
        </div>
      </div>
    </div>
  );
};

export default Ourclients;


