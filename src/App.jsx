import './App.css'
import Contact from './componets/pages/Contact'
import Footer from './componets/pages/Footer'
import Home from './componets/pages/Home'
import Navbar from './componets/pages/Navbar'
import Projects from './componets/pages/Projects'
function App() {


  return (
    
      <div>

       <div>
        <Navbar />
        <Home />
        <Projects />
        <Contact />

       </div>
       <Footer />
      </div>
      
 
  )
}

export default App
