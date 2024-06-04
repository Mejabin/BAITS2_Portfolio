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

const RotatingIcon = ({
  icon: Icon,
  size,
  delay,
  radius,
  color,
  startFrom,
}) => {
  const [rotation, setRotation] = useState(startFrom);
  const [direction, setDirection] = useState(1);
  const [hovered, setHovered] = useState(false);

  useEffect(() => {
    let animationId;
    let timerId;

    const animate = () => {
      setRotation((prevRotation) => {
        let newRotation = prevRotation + direction * 0.5;

        if (newRotation >= 330) {
          setDirection(-1);
          newRotation = 330; // Limit rotation to 330 degrees
        } else if (newRotation <= 0) {
          setDirection(1);
          newRotation = 230; // Limit rotation to 230 degrees
        }

        return newRotation;
      });

      animationId = requestAnimationFrame(animate);
    };

    const startAnimation = () => {
      animationId = requestAnimationFrame(animate);
    };

    if (!hovered) {
      timerId = setTimeout(startAnimation, delay);
    }

    return () => {
      clearTimeout(timerId);
      cancelAnimationFrame(animationId);
    };
  }, [direction, hovered, delay]);

  const iconLeft = Math.cos(rotation * (Math.PI / 180)) * radius;
  const iconTop = Math.sin(rotation * (Math.PI / 180)) * radius;

  return (
    <div
      className={`absolute ${hovered ? "hovered" : ""}`}
      style={{
        top: `calc(50% + ${iconTop}px)`,
        left: `calc(50% + ${iconLeft}px)`,
        transform: "translate(-50%, -50%)",
        zIndex: 1,
      }}
      onMouseEnter={() => setHovered(true)}
      onMouseLeave={() => setHovered(false)}
    >
      <div className="p-3 bg-white/85 rounded-full">
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
  startFrom: PropTypes.number.isRequired,
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
          <div className="position-relative">
            {/* Circular path 2 */}
            <div
              className="border-gray-800 border rounded-full absolute"
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
                size={35}
                delay={3000}
                radius={radius2}
                color="#264de4"
                startFrom={0}
              />
              <RotatingIcon
                icon={SiTailwindcss}
                size={35}
                delay={3500}
                radius={radius2}
                color="#38B2AC"
                startFrom={180}
              />
              <RotatingIcon
                icon={IoLogoLaravel}
                size={35}
                delay={3200}
                radius={radius5}
                color="#FF2D20"
                startFrom={330}
              />
              <RotatingIcon
                icon={FaPhp}
                size={35}
                delay={3400}
                radius={radius5}
                color="#5F7ABF"
                startFrom={310}
              />
            </div>

            <div
              className="text-white text-4xl font-bold absolute bottom-80 left-1/2 transform -translate-x-1/2"
              style={{ zIndex: 2, whiteSpace: "nowrap" }}
            >
              <span className="text-[#01723B]">Power</span> Up Your IT solution
              with <span className="text-green-500">BAITS</span>
            </div>
            <div className="text-white  font-bold absolute bottom-72 left-1/2 transform -translate-x-1/2"
              style={{ zIndex: 2, whiteSpace: "nowrap" }} >
              
              <p>
                We Build Advanced SoftWare To Help Your Business Grow
              </p>
            </div>
            <button>
              
            </button>
          </div>


          {/* Circular path 3 */}
          <div
            className="border-gray-800 border rounded-full absolute"
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
              size={35}
              delay={3100}
              radius={radius3}
              color="#F7DF1E"
              startFrom={250}
            />
            <RotatingIcon
              icon={FaNodeJs}
              size={35}
              delay={4000}
              radius={radius3}
              color="#6FA361"
              startFrom={280}
            />
            <RotatingIcon
              icon={SiJavascript}
              size={35}
              delay={3600}
              radius={radius3}
              color="#F7DF1E"
              startFrom={200}
            />
          </div>
          {/* Circular path 4 */}
          <div
            className="border-gray-800 border rounded-full absolute"
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
              size={35}
              delay={4500}
              radius={radius4}
              color="#007ACC"
              startFrom={160}
            />
            <RotatingIcon
              icon={SiExpress}
              size={35}
              delay={4200}
              radius={radius4}
              color="#000000"
              startFrom={0}
            />
            <RotatingIcon
              icon={DiMongodb}
              size={35}
              delay={4700}
              radius={radius4}
              color="#099E42"
              startFrom={100}
            />
            <RotatingIcon
              icon={SiReact}
              size={35}
              delay={4800}
              radius={radius4}
              color="#61DAFB"
              startFrom={0}
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
