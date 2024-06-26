import { useState, useEffect } from "react";
import { SiCss3, SiJavascript, SiReact, SiTailwindcss } from "react-icons/si";
import { IoLogoLaravel } from "react-icons/io5";
import { FaNodeJs } from "react-icons/fa";
import PropTypes from "prop-types";

const RotatingIcon = ({ icon: Icon, size, delay, radius }) => {
  const [rotation, setRotation] = useState(-160);
  const [direction, setDirection] = useState(1);

  useEffect(() => {
    const interval = setInterval(() => {
      setRotation((prevRotation) => {
        const newRotation = prevRotation + direction;

        if (newRotation > -10 || newRotation < -160) {
          setDirection(-direction);
        }

        return newRotation;
      });
    }, delay);

    return () => clearInterval(interval);
  }, [delay, direction]);

  const iconLeft = Math.cos(rotation * (Math.PI / 180)) * radius;
  const iconTop = Math.sin(rotation * (Math.PI / 180)) * radius;

  return (
    <div
      className="absolute"
      style={{
        top: `calc(50% + ${iconTop}px)`,
        left: `calc(50% + ${iconLeft}px)`,
        transform: "translate(-50%, -50%)",
      }}
    >
      <div className="p-6 bg-gradient-to-br from-gray-200 rounded-full">
        <Icon size={size} />
      </div>
    </div>
  );
};

RotatingIcon.propTypes = {
  icon: PropTypes.elementType.isRequired,
  size: PropTypes.number.isRequired,
  delay: PropTypes.number.isRequired,
  radius: PropTypes.number.isRequired,
};

// Main component
const Home = () => {
  // Radius of the first circular path
  const radius2 = 500;
  const radius5 = 500;
  const radius3 = 600;
  const radius4 = 700;

  return (
    <div className="bg-slate-950 h-screen flex justify-center items-center relative overflow-hidden">
      <div className="-mb-[70rem]">
        <div className="relative">
          {/* Circular path 2 */}
          <div
            className="border-gray-600 border rounded-full absolute"
            style={{
              width: radius2 * 2,
              height: radius2 * 2,
              top: "50%",
              left: "50%",
              transform: "translate(-50%, -50%)",
            }}
          >
            <RotatingIcon icon={SiCss3} size={40} delay={70} radius={radius2} />
            <div>
              <RotatingIcon
                icon={SiTailwindcss}
                size={40}
                delay={70}
                radius={radius2}
              />
            </div>
            <div >
              <RotatingIcon
                icon={IoLogoLaravel}
                size={40}
                delay={60}
                radius={radius5}
              />
            </div>
          </div>
          {/* Circular path 3 */}
          <div
            className="border-gray-600 border rounded-full absolute"
            style={{
              width: radius3 * 2,
              height: radius3 * 2,
              top: "50%",
              left: "50%",
              transform: "translate(-50%, -50%)",
            }}
          >
            <RotatingIcon
              icon={SiJavascript}
              size={40}
              delay={90}
              radius={radius3}
            />
            <div>
            <RotatingIcon
              icon={FaNodeJs}
              size={40}
              delay={90}
              radius={radius3}
            />

            </div>
           <div>
           <RotatingIcon
              icon={SiJavascript}
              size={40}
              delay={90}
              radius={radius3}
            />
           </div>
          
          </div>
          {/* Circular path 4 */}
          <div
            className="border-gray-600 border rounded-full absolute"
            style={{
              width: radius4 * 2,
              height: radius4 * 2,
              top: "50%",
              left: "50%",
              transform: "translate(-50%, -50%)",
            }}
          >
            <RotatingIcon
              icon={SiReact}
              size={40}
              delay={110}
              radius={radius4}
            />
            <RotatingIcon
              icon={SiReact}
              size={40}
              delay={110}
              radius={radius4}
            />
            <RotatingIcon
              icon={SiReact}
              size={40}
              delay={110}
              radius={radius4}
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
