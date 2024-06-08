import React, { useState, useEffect } from 'react';

function FinalProject() {
    const [rocketX, setRocketX] = useState(200);
    const [rocketY, setRocketY] = useState(150);

    useEffect(() => {
        const timer = setInterval(() => {
            setRocketX(prevX => prevX + 2);
            setRocketY(prevY => prevY - 1);
        }, 50);

        return () => clearInterval(timer);
    }, []);

    return (
        <div className="final-project">
            {/* Background */}
            <div className="background" style={{ backgroundColor: 'black', width: '1000px', height: '1000px' }}>
                {/* Stars */}
                {Array.from({ length: 500 }).map((_, index) => (
                    <div
                        key={index}
                        className="star"
                        style={{
                            position: 'absolute',
                            left: Math.random() * 1000 + 'px',
                            top: Math.random() * 1000 + 'px',
                            width: '5px',
                            height: '5px',
                            backgroundColor: 'white',
                            borderRadius: '50%'
                        }}
                    />
                ))}
            </div>

            {/* Rocket */}
            <div className="rocket" style={{ position: 'absolute', top: rocketY + 'px', left: rocketX + 'px', transform: 'rotate(-45deg)' }}>
                {/* Body */}
                <div style={{ width: '80px', height: '200px', backgroundColor: 'rgb(0, 185, 255)', position: 'absolute', bottom: '0', left: '0' }} />
                {/* Tip */}
                <div style={{ width: '0', height: '0', borderTop: '20px solid transparent', borderBottom: '20px solid rgb(0, 185, 255)', borderLeft: '40px solid transparent', borderRight: '40px solid transparent', position: 'absolute', bottom: '200px', left: '0' }} />
                {/* Wings */}
                <div style={{ width: '120px', height: '20px', backgroundColor: 'rgb(254, 32, 27)', position: 'absolute', bottom: '0', left: '-20px' }} />
                <div style={{ width: '120px', height: '20px', backgroundColor: 'rgb(254, 32, 27)', position: 'absolute', bottom: '0', right: '-20px' }} />
                {/* Windows */}
                <div style={{ width: '40px', height: '40px', borderRadius: '50%', backgroundColor: 'white', position: 'absolute', top: '30px', left: '20px' }} />
                <div style={{ width: '40px', height: '40px', borderRadius: '50%', backgroundColor: 'white', position: 'absolute', top: '80px', left: '20px' }} />
            </div>

            {/* Other elements like sun, moon, planets, meteors, etc. */}
            {/* Remember to use absolute positioning and appropriate styling */}
        </div>
    );
}

export default FinalProject;
