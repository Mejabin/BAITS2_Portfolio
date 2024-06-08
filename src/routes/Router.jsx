import { createBrowserRouter } from "react-router-dom";
import App from "../App";
import RootLayout from "../componets/layouts/RootLayout";
import Contact from "../componets/pages/contact/Contact";
import Careers from "../componets/pages/careers/Careers";

const Router = createBrowserRouter([
    {
        path: '/',
        element : <RootLayout />, 
        children: [
            {
                path: '/',
                element: <App/>,
            },
            {
                path: '/contact',
                element: <Contact/>,
            },
          
            {
                path: '/careers',
                element: <Careers/>,
            },
          
          
        ],
    },
]);
export default Router;