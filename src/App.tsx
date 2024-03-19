import { useEffect, useState } from 'react'
import { Comm } from './Comm'

import './App.css'

function App() {
  const [comms, setComms] = useState([] as Comm[])
  const [desc,setDesc] = useState('');
  const [price,setPrice] = useState('');
  

  async function load(){
    const response = await fetch("http://localhost:3000/Commissions");
    const comms = await response.json() as Comm[];
    

    setComms(comms);
  
  
  
  }

  useEffect(() =>{
    
    load();
  },[])


  async function PostData()
  { 

      const myData = `{"Description": "${desc}", "Price": ${price}  }`

      console.log(myData)
      console.log(JSON.stringify(myData))


      const sendComm = await fetch('http://localhost:3000/Commissions',{
        method:"POST",
        mode: "cors",
        headers: {
          "Content-Type": "application/json",
        },
        body: myData
      })
      await load();
      
  }


  return (


      <div>

    <label htmlFor="">Adat felvétele</label>
    <br />
    <label htmlFor="">Description</label>
    <input type="text" name="" id="descInp" onInput={e => {setDesc(e.currentTarget.value)}} />
    <br />
    <label htmlFor="">Price</label>
    <input type="text" name="" id="priceInp" onInput={e => {setPrice(e.currentTarget.value)}}/>
    <button onClick={PostData} >Order</button>


<div className='container'  >
      <h1>X's commissions</h1>
      <ul>
        {
          comms.map(comm => <p>   {comm.Description} || {comm.Price} </p> )
        }
      </ul>
    </div>
      </div>


    
  )
}

export default App
