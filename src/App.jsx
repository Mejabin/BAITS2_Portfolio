import "./App.css";
import Product from "./componets/pages/home/Product";
import Company from "./componets/pages/home/Company";

import Ourclients from "./componets/pages/home/Ourclients";
// import Footer from "./componets/pages/Footer";
import Home from "./componets/pages/Home";

import AboutUs from "./componets/pages/about/AboutUs";
import Projects from "./componets/pages/home/Projects";

function App() {
  return (
    <div>
      <Home />
      <Projects />
      <Product />
      <AboutUs />
      <Company />

      <Ourclients />

      {/* comment */}
      {/* <Footer /> */}
    </div>
  );
}

export default App;
