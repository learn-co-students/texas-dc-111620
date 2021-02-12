import React from "react";
import Section from "./components/Section/Section";
import DragonForm from "./components/DragonForm/DragonForm";
let URL = "http://localhost:3001/dragons"

class App extends React.Component {
 constructor(props){
   super(props) //call constructor in PARENT

   this.state = {
     dragons: [],
     isLoaded: false
   }


 }

  componentDidMount(){
    //function from react library
    console.log('App.js in ComponentDidMount')

    let URL = "http://localhost:3001/dragons"
    fetch(URL)
    .then(res => res.json())
    .then(dragons => {
      this.setState({
        dragons,
        isLoaded: true
      })
      console.log(dragons)
      console.log("this is outsde of setState", this.state)
    })

  }
  

  //updates our ONE dragon's atWar attribute
  toggleDragon = (updatedDragon) => {
    //toggleDragon
    //chamge atWar attribute
    updatedDragon.atWar = !updatedDragon.atWar;

    const reqPackage = {
      method: 'PATCH', 
      headers: {
        "Content-Type": 'application/json',
      },
      body: JSON.stringify({
        atWar: updatedDragon.atWar
      })
    }
    
    fetch(`${URL}/${updatedDragon.id}`, reqPackage)
    .then(res=> res.json())
    .then(patchDragon => {
      
      this.setState({
        dragons: this.state.dragons.map((dragon) =>
            dragon.id == patchDragon.id ? patchDragon : dragon
          ),
        
      });
    })

  };


  //adding a dragon
  handleSubmit = (e) => {
    //preventDefault because form
    e.preventDefault();
    //format our data 
    let newDragon = {
      name: e.target.name.value,
      description: e.target.description.value,
      image: e.target.image.value,
      atWar: false,
    };

    let reqPackage = {
      method: 'POST',
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(newDragon)
    }
    //request to add new dragon
    fetch(URL, reqPackage)
    //parsing request
    .then(res => res.json())
    //received new dragon
    .then(newDragon => {

      console.log(newDragon)
      this.setState({
        dragons: [...this.state.dragons, newDragon]
      })

    })

    //log to make sure our data 'looks' ok
    //update state 



    //clear our form
    e.target.reset()
  };


  //delete a dragon :( 
    handleDelete = (selectedDragon) => {
     
      fetch(`${URL}/${selectedDragon.id}`, {
        method: 'DELETE'
      })
      .then(res => res.json())
      .then(() => {
        
        this.setState({
          dragons: this.state.dragons.filter((dragon) => dragon != selectedDragon)
        })
      })
      //logic to delete a dragon 
      //remove THAT dragon from state

    }

  render() {
    console.log('App.js in render')
    return (
      <div>
        {this.state.isLoaded ? <div className="App">
        {console.log('App.js in return')}
        <DragonForm handleSubmit={this.handleSubmit} />
        <Section
          title="Home"
          dragons={this.state.dragons.filter(
            (dragon) => dragon.atWar === false
          )}
          toggleDragon={this.toggleDragon}
          handleDelete={this.handleDelete}
        />
        <Section
          title="War"
          dragons={this.state.dragons.filter((dragon) => dragon.atWar === true)}
          toggleDragon={this.toggleDragon}
          handleDelete={this.handleDelete}
        />
      </div> : <h1>NOT LOADED</h1>}
      </div>
      
    );
  }
}

export default App;
