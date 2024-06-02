import "./App.css";
import Product from "./componets/pages/home/Product"
import Features from "./componets/pages/home/Features"
import Company from "./componets/pages/home/Company"
import ProductQuality from "./componets/pages/home/ProductQuality"
import Ourclients from "./componets/pages/home/Ourclients"
import Footer from "./componets/pages/Footer";
import Home from "./componets/pages/Home";
import Navbar from "./componets/pages/Navbar";
import Testimonial from "./componets/pages/home/Testimonial";

function App() {
  return (
    <div>
      <Navbar />
      <Product />
      <Features />
      <Company />
      <ProductQuality />
      <Ourclients />
      <Testimonial />
      <Home />
      {/* comment */}
      <Footer />
    </div>
  );
}

export default App;
