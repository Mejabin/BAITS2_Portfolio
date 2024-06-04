import Bgabout from "../../../assets/Bgabout.jpg";
import { Link } from "react-router-dom";
import MissionImage from "../../../assets/mission.png";
import VisionImage from "../../../assets/vission.png";
import ValuesImage from "../../../assets/values.png";
import raffin from "../../../assets/raffin.png";
import Mehzabin from "../../../assets/Mehzabin.jpg";
import { FaFacebookF } from "react-icons/fa";
import { FaTwitter, FaLinkedinIn, FaGithub } from "react-icons/fa6";

const AboutUs = () => {
  const items = [
    {
      id: "01",
      title: "High Quality Hardware",
      description:
        "We use top-notch hardware to develop the most efficient apps for our clients.",
    },
    {
      id: "02",
      title: "Expert Team",
      description:
        "Our team of experts have years of experience in the IT industry and are ready to help you.",
    },
    {
      id: "03",
      title: "Customer Support",
      description:
        "We offer 24/7 customer support to ensure all your needs are met.",
    },
    {
      id: "04",
      title: "Innovative Solutions",
      description:
        "We provide innovative IT solutions tailored to your business needs.",
    },
    {
      id: "05",
      title: "Affordable Prices",
      description:
        "Our services are priced competitively to ensure you get the best value for your money.",
    },
    {
      id: "06",
      title: "Custom Development",
      description:
        "We offer custom software development services to meet your unique requirements.",
    },
  ];

  const sections = [
    {
      id: "01",
      image: MissionImage,
      heading: "Mission",
      description:
        "Our mission is to deliver innovative and reliable IT solutions that help businesses achieve their goals and stay ahead in the competitive market.",
    },
    {
      id: "02",
      image: VisionImage,
      heading: "Vision",
      description:
        "Our vision is to be the leading provider of cutting-edge technology solutions, empowering businesses to reach new heights of success.",
    },
    {
      id: "03",
      image: ValuesImage,
      heading: "Values",
      description:
        "We value integrity, innovation, and customer satisfaction. Our team is committed to delivering exceptional services that exceed expectations.",
    },
  ];

  return (
    <div>
      <div
        className="min-h-[500px] flex items-center justify-center bg-cover bg-center"
        style={{ backgroundImage: `url(${Bgabout})` }}
      >
        <div className="p-4">
          <h1 className="text-white text-center text-6xl">
            IT Solutions for Your Business
          </h1>
          <p className="mt-4 text-center text-xl text-gray-100">
            Information technology plays a prominent role in business and
            provides <br />a foundation for much of our current workforce. From
            communications <br />
            to data management and operational efficiency, IT supports many
            business <br />
            functions and helps drive productivity.
            <br />
          </p>
          <div className="flex justify-center mt-4 space-x-4">
            <Link to="/learn-more">
              <button className="bg-teal-500 text-white px-4 py-2 rounded">
                Learn More
              </button>
            </Link>
            <Link to="/get-in-touch">
              <button className="bg-teal-500 text-white px-4 py-2 rounded">
                Get in Touch
              </button>
            </Link>
          </div>
        </div>
      </div>
      {/* <div className="mt-4 p-8">
        <h1 className="text-black text-center text-6xl font-bold">About Us</h1>
      </div> */}

      {/* mission,vission,values */}
      <div className=" mx-auto">
        <div className="grid grid-cols-1 md:grid-cols-3 mt-4 p-28 ">
          {sections.map((section, index) => (
            <div
              key={section.id}
              className={`rounded-full ${
                index < sections.length - 0 ? "border-r border-black" : ""
              }`}
            >
              <div className="flex justify-center">
                <div className="w-40 h-40 mb-4 overflow-hidden">
                  <img
                    src={section.image}
                    alt={section.heading}
                    className="w-full h-full object-cover"
                  />
                </div>
              </div>
              <h2 className="text-2xl font-bold text-center uppercase">
                {section.heading}
              </h2>
              <p className="text-center text-lg p-10">{section.description}</p>
            </div>
          ))}
        </div>
      </div>
      {/* why choose us */}
      <div className="mb-8 p-12 bg-gray-100">
        <p className="text-center text-3xl mt-2 font-bold">Why Choose Us</p>
        <div className="p-16 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {items.map((item) => (
            <div className="flex items-start" key={item.id}>
              <p className="text-4xl font-bold mr-4">{item.id}</p>
              <div className="border-l-4 border-gray-500 h-16 mr-4"></div>
              <div>
                <p className="text-2xl font-semibold">{item.title}</p>
                <p>{item.description}</p>
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Our team section */}
      <div className="mt-2">
        <h1 className="text-center text-4xl font-bold">Meet Our Team</h1>
        <div className=" grid grid-cols-1 md:grid-cols-3 mt-4 gap-4 ">
          <div className=" p-12 flex flex-col justify-center items-center">
            <img
              src={raffin}
              alt="raffinda"
              className="h-[200px] w-[200px] rounded-full"
            />
            <h1 className="mt-1 text-lg font-bold">Md. Raffin Hossain</h1>
            <p className="mt-1 text-lg font-bold">Senior Software Developer</p>

            <div className="flex flex-row justify-center gap-2">
              <Link target="_blank" to="" className=" p-2 ">
                <FaFacebookF className="h-6 w-6 text-black " />
              </Link>
              <Link target="_blank" to="" className=" p-2 ">
                <FaTwitter className="h-6 w-6 text-black " />
              </Link>
              <Link target="_blank" to="" className=" p-2 ">
                <FaLinkedinIn className="h-6 w-6 text-black " />
              </Link>

              <Link target="_blank" to="" className=" p-2 ">
                <FaGithub className="h-6 w-6 text-black " />
              </Link>
            </div>
          </div>
          <div className=" p-12 flex flex-col justify-center items-center">
            <img
              src={Mehzabin}
              alt="raffinda"
              className="h-[200px] w-[200px] rounded-full"
            />
            <h1 className="mt-1 text-lg font-bold">Tasnim Mehzabin Khan</h1>
            <p className="mt-1 text-lg font-bold">Jr.Software Developer</p>

            <div className="flex flex-row justify-center gap-2">
              <Link target="_blank" to="" className=" p-2 ">
                <FaFacebookF className="h-6 w-6 text-black " />
              </Link>
              <Link target="_blank" to="" className=" p-2 ">
                <FaTwitter className="h-6 w-6 text-black " />
              </Link>
              <Link target="_blank" to="" className=" p-2 ">
                <FaLinkedinIn className="h-6 w-6 text-black " />
              </Link>

              <Link target="_blank" to="" className=" p-2 ">
                <FaGithub className="h-6 w-6 text-black " />
              </Link>
            </div>
          </div>
          <div className=" p-12 flex flex-col justify-center items-center">
            <img
              src={Mehzabin}
              alt="raffinda"
              className="h-[200px] w-[200px] rounded-full"
            />
            <h1 className="mt-1 text-lg font-bold">Md. Raffin Hossain</h1>
            <p className="mt-1 text-lg font-bold">Senior Software Developer</p>

            <div className="flex flex-row justify-center gap-2">
              <Link target="_blank" to="" className=" p-2 ">
                <FaFacebookF className="h-6 w-6 text-black " />
              </Link>
              <Link target="_blank" to="" className=" p-2 ">
                <FaTwitter className="h-6 w-6 text-black " />
              </Link>
              <Link target="_blank" to="" className=" p-2 ">
                <FaLinkedinIn className="h-6 w-6 text-black " />
              </Link>

              <Link target="_blank" to="" className=" p-2 ">
                <FaGithub className="h-6 w-6 text-black " />
              </Link>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  );
};

export default AboutUs;