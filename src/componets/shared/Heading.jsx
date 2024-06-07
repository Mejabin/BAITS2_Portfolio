const Heading = ({ text }) => {
  return (
    <div className="relative flex items-center justify-start">
      <h2 className="text-5xl font-semibold uppercase relative z-10">{text}</h2>
      <p className="absolute left-0.5 top-0 w-full h-full flex items-center justify-start mt-2 -z-10">
        <svg className="w-full h-full">
          <text
            className="text-5xl font-semibold"
            x="0"
            y="50%"
            textAnchor="start"
            dominantBaseline="middle"
          >
            {text}
          </text>
        </svg>
      </p>
    </div>
  );
};

export default Heading;
