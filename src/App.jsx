import "./App.css";
import Product from "./componets/pages/home/Product";
import Company from "./componets/pages/home/Company";
import Ourclients from "./componets/pages/home/Ourclients";
import Home from "./componets/pages/Home";
import Projects from "./componets/pages/home/Projects";

function App() {
  return (
    <div>
      <Home />
      <Projects />
      <Product />
      <Company />
      <Ourclients />
    </div>
  );
}

export default App;
