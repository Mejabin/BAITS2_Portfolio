import { createBrowserRouter } from "react-router-dom";
import App from "../App";
import RootLayout from "../componets/layouts/RootLayout";
import Contact from "../componets/pages/home/contact/Contact";

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
          
        ],
    },
]);
export default Router;