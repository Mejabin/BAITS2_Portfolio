import Company from "./home/Company"
import Product from "./home/Product"
import Features from "./home/Features"
import ProductQuality from "./home/ProductQuality"
import Ourclients from "./home/Ourclients"
import Testimonial from "./home/Testimonial"


const Home = () => {
  return (
    <div>
      <Product/>
      <Features />
      < Company />
      <ProductQuality />
      <Ourclients />
      <Testimonial />

    </div>
  )
}

export default Home