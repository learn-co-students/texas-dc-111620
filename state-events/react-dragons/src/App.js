import React from "react";
import Section from "./components/Section/Section";

class App extends React.Component {
  state = {
    dragons: [
      {
        id: 1,
        name: "Toothless",
        description: "A Night Fury",
        image: "https://www.wikihow.com/images/b/b2/Draw-Toothless-Step-24.jpg",
        atWar: true,
      },
      {
        id: 2,
        name: "Tomar",
        description: "He is Fire, He is Death",
        image: "https://media.giphy.com/media/bU660Y0VKPvCE/giphy.gif",
        atWar: false,
      },
      {
        id: 3,
        name: "Bozar",
        description: "An uninteresting dragon",
        image:
          "https://static.boredpanda.com/blog/wp-content/uploads/2015/05/What-are-dragons-doing-nowadays-fb3.jpg",
        atWar: false,
      },
    ],
  };

  toggleDragon = (updatedDragon) => {
    //toggleDragon
    console.log(updatedDragon, "This was clicked! ---- Raul ");
    //chamge atWar attribute 
    updatedDragon.atWar = !updatedDragon.atWar 

    this.setState({
      dragons: [...this.state.dragons.map((dragon)=> dragon.id == updatedDragon.id ? updatedDragon : dragon)]
    })
  };
  render() {
    return (
      <div className="App">
        {/* I want to iterate through my dragons and 
      for EVERY dragon I want a DragonCard */}
        {/* {dragons.map((dragon) => (
        <FunctionalDragonCard key={dragon.id} dragon={dragon} message={'this is my not unique message'}/>
      ))} */}
        <Section
          title="Home"
          dragons={this.state.dragons.filter(
            (dragon) => dragon.atWar === false
          )}
          toggleDragon={this.toggleDragon}
        />
        <Section
          title="War"
          dragons={this.state.dragons.filter(
            (dragon) => dragon.atWar === true
            )}
          toggleDragon={this.toggleDragon}
        />
      </div>
    );
  }
}

export default App;
