import p1 from "../../../assets/Projects/project02.jpg";
import p2 from "../../../assets/Projects/project01.jpg";
import p3 from "../../../assets/Projects/project03.jpg";
import p4 from "../../../assets//Projects/project04.jpg";
import Heading from "../../shared/Heading";
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
  ];

  return (
    <section className="container mx-auto">
      <div className="py-32">
        <Heading text={"Our Projects"} />

        <p className="text-sm ps-1">
          Over 6 Million+ clients use our products to build & grow their
          websites
        </p>
        <div className="mt-8 py-4 flex flex-col md:flex-row justify-center items-center gap-8">
          {projects.map((project, index) => (
            <div
              key={index}
              className="relative bg-gray-200 rounded-lg h-full hover:bg-emerald-600 transition duration-300 p-1 group"
            >
              <img
                src={project.img}
                alt={project.title}
                className="w-full rounded-t-md border"
              />
              <div className="bg-white rounded-b-md text-justify px-6 pt-4 pb-8 object-cover">
                {project.link ? (
                  <a href={project.link} className="text-black">
                    <p className="mt-4 text-2xl font-light">{project.title}</p>
                  </a>
                ) : (
                  <p className="mt-4 text-2xl font-light">{project.title}</p>
                )}
                <p className="mt-4 text-sm">{project.description}</p>
              </div>
              {project.link && (
                <div className="absolute inset-0 flex justify-center items-center opacity-0 group-hover:opacity-100 transition duration-300">
                  <div className="absolute inset-0 bg-black opacity-50 rounded-lg"></div>
                  <a
                    href={project.link}
                    className="relative  text-white flex items-center justify-center shadow-lg w-32 h-32 rounded-full border-2 border-white p-6 gap-1.5"
                  >
                    <p className="font-medium">See More</p>{" "}
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
