import { CreateBrowserROute } from "react-router-dom";
import App from "../App";
import RootLayout from "../componets/layouts/RootLayout";

const Router = CreateBrowserROute([
    {
        path: '/',
        element : <RootLayout />, 
        Children: [
            {
                path: '/',
                element: <App/>,
            },
        ],
    },
]);
export default Router;