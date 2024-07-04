import { createBrowserRouter } from "react-router-dom";
import App from "../App";
import RootLayout from "../componets/layouts/RootLayout";
import Home from "../componets/pages/Home";




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
                path: '/',
                element: <Home/>,
            },
          
          
        ],
    },
]);
export default Router;