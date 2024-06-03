import { useState, useEffect } from "react";
import {
  SiCss3,
  SiJavascript,
  SiReact,
  SiTailwindcss,
  SiTypescript,
  SiExpress,
} from "react-icons/si";
import { DiMongodb } from "react-icons/di";
import { IoLogoLaravel } from "react-icons/io5";
import { FaNodeJs, FaPhp } from "react-icons/fa";
import PropTypes from "prop-types";

const RotatingIcon = ({ icon: Icon, size, delay, radius, color }) => {
  const [rotation, setRotation] = useState(-160);
  const [direction, setDirection] = useState(1);
  const [hovered, setHovered] = useState(false);

  useEffect(() => {
    if (hovered) return;

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
  }, [delay, direction, hovered]);

  const iconLeft = Math.cos(rotation * (Math.PI / 180)) * radius;
  const iconTop = Math.sin(rotation * (Math.PI / 180)) * radius;

  return (
    <div
      className="absolute"
      style={{
        top: `calc(50% + ${iconTop}px)`,
        left: `calc(50% + ${iconLeft}px)`,
        transform: "translate(-50%, -50%)",
        zIndex: 1,
      }}
      onMouseEnter={() => setHovered(true)}
      onMouseLeave={() => setHovered(false)}
    >
      <div className="p-6 bg-white/90 rounded-full">
        <Icon size={size} color={color} />
      </div>
    </div>
  );
};

RotatingIcon.propTypes = {
  icon: PropTypes.elementType.isRequired,
  size: PropTypes.number.isRequired,
  delay: PropTypes.number.isRequired,
  radius: PropTypes.number.isRequired,
  color: PropTypes.string,
};

RotatingIcon.defaultProps = {
  color: "#000000",
};

const Home = () => {
  const radius2 = 500;
  const radius3 = 600;
  const radius4 = 700;
  const radius5 = 500;

  return (
    <div className="bg-[#0A0C3E] h-screen flex justify-center items-center relative overflow-hidden">
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
              zIndex: 3,
            }}
          >
            <RotatingIcon
              icon={SiCss3}
              size={40}
              delay={90}
              radius={radius2}
              color="#264de4"
            />
            <RotatingIcon
              icon={SiTailwindcss}
              size={40}
              delay={100}
              radius={radius2}
              color="#38B2AC"
            />
            <RotatingIcon
              icon={IoLogoLaravel}
              size={40}
              delay={70}
              radius={radius5}
              color="#FF2D20"
            />
            <RotatingIcon
              icon={FaPhp}
              size={40}
              delay={80}
              radius={radius5}
              color="#5F7ABF"
            />
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
              zIndex: 2,
            }}
          >
            <RotatingIcon
              icon={SiJavascript}
              size={40}
              delay={40}
              radius={radius3}
              color="#F7DF1E"
            />
            <RotatingIcon
              icon={FaNodeJs}
              size={40}
              delay={50}
              radius={radius3}
              color="#6FA361"
            />
            <RotatingIcon
              icon={SiJavascript}
              size={40}
              delay={70}
              radius={radius3}
              color="#F7DF1E"
            />
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
              zIndex: 1,
            }}
          >
            <RotatingIcon
              icon={SiTypescript}
              size={40}
              delay={100}
              radius={radius4}
              color="#007ACC"
            />
            <RotatingIcon
              icon={SiExpress}
              size={40}
              delay={60}
              radius={radius4}
              color="#000000"
            />
            <RotatingIcon
              icon={DiMongodb}
              size={40}
              delay={110}
              radius={radius4}
              color="#099E42"
            />
            <RotatingIcon
              icon={SiReact}
              size={40}
              delay={70}
              radius={radius4}
              color="#61DAFB"
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
