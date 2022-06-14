import { useState, useEffect } from "react";

function App() {
  const [count, setCount] = useState(0);
  const [images, setImage] = useState([]);

  useEffect(() => {
    fetch("/count")
      .then((r) => r.json())
      .then((data) => setCount(data.count));
  }, []);

  const request = async (e) => {
    let req = await fetch('/images')
    let res = await req.json()
    setImage(res)
  }
  useEffect(() => {
    request()
  }, [])


  return (
    <div className="App">
      {/* <h1>Page Count: {count}</h1> */}
      {/* <h1>Landing page</h1>
      <button>Shop</button>
      <a href="">Log in</a> */}
      {
        images.map((image) => {
          return(
            <img src = {image.url}/>
          )
        })
      }
    </div>
  );
}

export default App;
