import p1 from "../../../assets/Projects/project02.jpg";
import p2 from "../../../assets/Projects/project01.jpg";
import p3 from "../../../assets/Projects/project03.jpg";
import p4 from "../../../assets/Projects/project04.jpg";
// import p5 from "../../../assets/Projects/p5.png";
import p6 from "../../../assets/Projects/p6.png";
import p7 from "../../../assets/Projects/p7.png";
import p8 from "../../../assets/Projects/p8.png";
import p9 from "../../../assets/Projects/p9.png";
import { IoMdArrowForward } from "react-icons/io";

const Projects = () => {
  const projects = [
    {
      img: p1,
      title: "SMS Portal",
      description:
        "An SMS portal is a web-based platform that allows users to compose, send, and manage bulk text messages efficiently.",
      link: "https://sms.iemsbd.com/",
    },
    {
      img: p2,
      title: "Website of Madrasha",
      description:
        "Comprehensive platform dedicated to providing authentic Islamic teachings, resources, and educational materials.",
      link: "https://dicmadrasha.com/home/events/dic",
    },
    {
      img: p3,
      title: "Accounts Management",
      description:
        "Discover seamless financial management with user-friendly features designed to simplify your accounting tasks.",
      link: "https://task.baitsbd.com/",
    },
    {
      img: p4,
      title: "Task Management",
      description:
        "Millions of other royalty-free stock photos, illustrations, and vectors in the Shutterstock collection.",
      link: "https://task.baitsbd.com/",
    },
    // {
    //   img: p5,
    //   title: "School Management System",
    //   description:
    //     "A comprehensive e-commerce platform for businesses to sell products online with integrated payment solutions.",
    //   link: "https://nedubd.com/feature/",
    // },
    {
      img: p6,
      title: "School Management System",
      description:
        "School Management Software and Mobile app that manages all school related activities. Along with this it also maintains college and institute.",
      link: "https://school4.nedubd.com/",
    },
    {
      img: p7,
      title: "School Management System",
      description:
        "School Management Software and Mobile app that manages all school related activities. Along with this it also maintains college and institute.",
      link: "https://school5.nedubd.com/",
    },
    {
      img: p8,
      title: "School Management System",
      description:
        "School Management Software and Mobile app that manages all school related activities. Along with this it also maintains college and institute.",
      link: "https://school10.nedubd.com/",
    },
    {
      img: p9,
      title: "School Management System",
      description:
        "School Management Software and Mobile app that manages all school related activities. Along with this it also maintains college and institute.",
      link: "https://school11.nedubd.com/",
    },
    
  ];

  return (
    <section className="container mx-auto px-4 sm:px-6 lg:px-8">
      <div className="py-16 sm:py-24">
        <h1 className="text-center text-2xl font-semibold uppercase">Our Projects</h1>
        <p className="ps-1 my-3 text-center text-xl">
          Over 6 Million+ clients use our products to build & grow their websites
        </p>
        <div className="mt-8 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          {projects.map((project, index) => (
            <div
              key={index}
              className="relative bg-gray-200 rounded-lg hover:bg-emerald-600 transition duration-300 p-1 group"
            >
              <img
                src={project.img}
                alt={project.title}
                className="w-full rounded-t-md border"
              />
              <div className="bg-white rounded-b-md text-justify px-6 pt-4 pb-8">
                {project.link ? (
                  <a href={project.link} className="text-black">
                    <p className="mt-4 text-2xl font-light text-justify">{project.title}</p>
                  </a>
                ) : (
                  <p className="mt-4 text-2xl font-light text-justify">{project.title}</p>
                )}
                <p className="mt-4 text-sm text-justify">{project.description}</p>
              </div>
              {project.link && (
                <div className="absolute inset-0 flex justify-center items-center opacity-0 group-hover:opacity-100 transition duration-300">
                  <div className="absolute inset-0 bg-black opacity-50 rounded-lg"></div>
                  <a
                    href={project.link}
                    className="relative text-white flex items-center justify-center shadow-lg w-32 h-32 rounded-full border-2 border-white p-6 gap-1.5"
                  >
                    <p className="font-medium ">See More</p>
                    <IoMdArrowForward className="text-2xl -rotate-45" />
                  </a>
                </div>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Projects;
