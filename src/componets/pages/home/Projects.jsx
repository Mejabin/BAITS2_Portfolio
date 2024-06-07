import p1 from "../../../assets/Projects/Project 1.png";
import p2 from "../../../assets/Projects/Madrasha.png";
import p3 from "../../../assets/Projects/Accounts.png";
import p4 from "../../../assets//Projects/task.jpg";
import Heading from "../../shared/Heading";

const Projects = () => {
  return (
    <section className="container mx-auto">
      <div className="py-32">
        <Heading text={"Our Projects"} />

        <p className="text-center text-lg ">
          Over 6 Million+ clients use our products to build & grow their
          websites
        </p>
        <div className="mt-4 p-4 flex flex-col md:flex-row justify-center items-center gap-8">
          <div className="bg-gray-200 p-4 rounded-lg  h-full hover:bg-purple-300 transition duration-300">
            <img src={p1} alt="" className="w-full h-40 rounded-lg" />
            <div className="mt-12 text-justify">
              <a href="https://sms.iemsbd.com/" className="text-black">
                <p className="mt-4 text-center text-xl  font-semibold">
                  SMS Portal
                </p>
              </a>
              <p className="mt-4 text-center font-sm">
                An SMS portal is a web-based platform that allows users to
                compose, send, and manage bulk text messages efficiently.
              </p>
            </div>
          </div>
          <div className="bg-gray-200 p-4 rounded-lg  h-full hover:bg-purple-300 transition duration-300">
            <img src={p2} alt="" className="w-full h-40 rounded-lg" />
            <div className="mt-12 text-justify">
              <a
                href="https://dicmadrasha.com/home/events/dic"
                className="text-black"
              >
                <p className="mt-4 text-center text-xl  font-semibold">
                  Website of Madrasha
                </p>
              </a>
              <p className="mt-4 text-center font-sm">
                Explore a comprehensive platform dedicated to providing
                authentic Islamic teachings, resources, and educational
                materials.
              </p>
            </div>
          </div>
          <div className="bg-gray-200 p-4 rounded-lg  h-full hover:bg-purple-300 transition duration-300">
            <img src={p3} alt="" className="w-full h-40 rounded-lg" />
            <div className="mt-12 text-justify">
              <p className="mt-4 text-center text-xl font-semibold">
                Accounts Management
              </p>
              <p className="mt-4 text-center font-sm">
                Discover seamless financial management with user-friendly
                features designed to simplify your accounting tasks.
              </p>
            </div>
          </div>
          <div className="bg-gray-200 p-4 rounded-lg  h-full hover:bg-purple-300 transition duration-300">
            <img src={p4} alt="" className="w-full h-40 rounded-lg" />
            <div className="mt-12 text-justify">
              <a href="https://task.baitsbd.com/" className="text-black">
                <p className="mt-4 text-center text-xl  font-semibold">
                  Task Management
                </p>
              </a>
              <p className="mt-4 text-center font-sm">
                Product stock images in HD and millions of other royalty-free
                stock photos, illustrations, and vectors in the Shutterstock
                collection.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Projects;
