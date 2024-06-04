import Bgcontact2 from "../../../assets/Bgcontact2.jpg";


const Contact = () => {

    const handlePost=(event)=>{
      event.preventDefault();
      const name=event.target.name.value;
      const email=event.target.email.value;
      const message=event.target.message.value;
      
      const object={
        name,
        email,
        message
      }
      
      fetch('http://localhost:5000/user-post',{
        method:"POST",
        headers:{
          "content-type":"application/json"
        },
        body:JSON.stringify(object)
      })
      .then(res=>res.json())
      .then(result=>{
        console.log(result);
        alert("User Posted Successfully");
      })
      
        }
        return (
          <div
            className="min-h-screen flex items-center justify-center bg-cover bg-center"
            style={{ backgroundImage: `url(${Bgcontact2})` }}
          >
            <div className="bg-gray-200 p-8 rounded-lg shadow-md w-full max-w-lg bg-opacity-90">
              <h1 className="text-2xl font-bold mb-6 text-center">Contact Us</h1>
              <form onSubmit={handlePost} className="space-y-6">
                <div>
                  <label className="block mb-2 text-sm font-medium text-gray-700" htmlFor="name">Name</label>
                  <input
                    type="text"
                    name="name"
                    id="name"
                    className="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-cyan-950"
                    placeholder="Your Name"
                    required
                  />
                </div>
                <div>
                  <label className="block mb-2 text-sm font-medium text-gray-700" htmlFor="email">Email</label>
                  <input
                    type="email"
                    id="email"
                    name="email"
                    className="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-cyan-950"
                    placeholder="Your Email"
                    required
                  />
                </div>
                <div>
                  <label className="block mb-2 text-sm font-medium text-gray-700" htmlFor="message">Message</label>
                  <textarea
                    id="message"
                    name="message"
                    className="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-cyan-950"
                    placeholder="Your Message"
                    rows="4"
                    required
                  ></textarea>
                </div>
                <button
                  type="submit"
                  className="w-full px-4 py-2 bg-black text-white font-medium rounded-md shadow-sm hover:bg--950 focus:outline-none focus:ring-2 focus:ring-blue-500"
                >
                  Send Message
                </button>
              </form>
            </div>
          </div>
  )
}

export default Contact






// import Bgcontact2 from "../../../../assets/Bgcontact2.jpg";

// const Contact = () => {

//   const handlePost=(event)=>{
// event.preventDefault();
// const name=event.target.name.value;
// const email=event.target.email.value;
// const message=event.target.message.value;

// const object={
//   name,
//   email,
//   message
// }

// fetch('http://localhost:5000/user-post',{
//   method:"POST",
//   headers:{
//     "content-type":"application/json"
//   },
//   body:JSON.stringify(object)
// })
// .then(res=>res.json())
// .then(result=>{
//   console.log(result);
//   alert("User Posted Successfully");
// })

//   }
//   return (
//     <div
//       className="min-h-screen flex items-center justify-center bg-cover bg-center"
//       style={{ backgroundImage: `url(${Bgcontact2})` }}
//     >
//       <div className="bg-gray-200 p-8 rounded-lg shadow-md w-full max-w-lg bg-opacity-90">
//         <h1 className="text-2xl font-bold mb-6 text-center">Contact Us</h1>
//         <form onSubmit={handlePost} className="space-y-6">
//           <div>
//             <label className="block mb-2 text-sm font-medium text-gray-700" htmlFor="name">Name</label>
//             <input
//               type="text"
//               name="name"
//               id="name"
//               className="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-cyan-950"
//               placeholder="Your Name"
//               required
//             />
//           </div>
//           <div>
//             <label className="block mb-2 text-sm font-medium text-gray-700" htmlFor="email">Email</label>
//             <input
//               type="email"
//               id="email"
//               name="email"
//               className="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-cyan-950"
//               placeholder="Your Email"
//               required
//             />
//           </div>
//           <div>
//             <label className="block mb-2 text-sm font-medium text-gray-700" htmlFor="message">Message</label>
//             <textarea
//               id="message"
//               name="message"
//               className="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-cyan-950"
//               placeholder="Your Message"
//               rows="4"
//               required
//             ></textarea>
//           </div>
//           <button
//             type="submit"
//             className="w-full px-4 py-2 bg-black text-white font-medium rounded-md shadow-sm hover:bg--950 focus:outline-none focus:ring-2 focus:ring-blue-500"
//           >
//             Send Message
//           </button>
//         </form>
//       </div>
//     </div>
//   );
// }

// export default Contact;