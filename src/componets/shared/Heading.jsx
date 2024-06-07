const Heading = ({ text }) => {
  return (
    <div className="relative flex items-center justify-start">
      <h2 className="text-5xl font-semibold uppercase">{text}</h2>
      <p className=" absolute  -ms-7 mt-3.5 -z-10">
        <svg width="160%">
          <text className="text-5xl font-semibold" x="50%" y="50%">
            {text}
          </text>
        </svg>
      </p>
    </div>
  );
};

export default Heading;
