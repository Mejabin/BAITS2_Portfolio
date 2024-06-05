import  { useEffect } from 'react';


const Product = () => {
    useEffect(() => {
        const parent = document.querySelector('.splitview');
        const topPanel = parent.querySelector('.top');
        const handle = parent.querySelector('.handle');
        let skewHack = 0;
        let delta = 0;

        // If the parent has .skewed class, set the skewHack var.
        if (parent.classList.contains('skewed')) {
            skewHack = 1000;
        }

        const handleMouseMove = (event) => {
            // Get the delta between the mouse position and center point.
            delta = (event.clientX - window.innerWidth / 2) * 0.5;

            // Move the handle.
            handle.style.left = event.clientX + delta + 'px';

            // Adjust the top panel width.
            topPanel.style.width = event.clientX + skewHack + delta + 'px';
        };

        parent.addEventListener('mousemove', handleMouseMove);

        return () => {
            parent.removeEventListener('mousemove', handleMouseMove);
        };
    }, []); // Empty dependency array ensures the effect runs only once after mount

    return (
        <div className="splitview skewed">
            <div className="panel bottom">
                <div className="content">
                    <div className="description">
                        <h1>The original image.</h1>
                        <p>This is how the image looks like before applying a duotone effect.</p>
                    </div>
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/original-image.jpg" alt="Original" />
                </div>
            </div>

            <div className="panel top">
                <div className="content">
                    <div className="description">
                        <h1>The duotone image.</h1>
                        <p>This is how the image looks like after applying a duotone effect.</p>
                    </div>
                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/duotone-image.jpg" alt="Duotone" />
                </div>
            </div>

            <div className="handle"></div>
        </div>
    );
};

export default Product;
