import { createBrowserRouter } from "react-router-dom";
import App from "../App";
import RootLayout from "../componets/layouts/RootLayout";

const Router = createBrowserRouter([
    {
        path: '/',
        element : <RootLayout />, 
        children: [
            {
                path: '/',
                element: <App/>,
            },
          
        ],
    },
]);
export default Router;