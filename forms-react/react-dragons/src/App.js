import React from "react";
import Section from "./components/Section/Section";
import DragonForm from "./components/DragonForm/DragonForm";

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

  //updates our ONE dragon's atWar attribute
  toggleDragon = (updatedDragon) => {
    //toggleDragon
    console.log(updatedDragon, "This was clicked! ---- Raul ");
    //chamge atWar attribute
    updatedDragon.atWar = !updatedDragon.atWar;

    this.setState({
      dragons: [
        ...this.state.dragons.map((dragon) =>
          dragon.id == updatedDragon.id ? updatedDragon : dragon
        ),
      ],
    });
  };

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
    //log to make sure our data 'looks' ok
    console.log("I be submitted", e.target);

    //update state 

    this.setState({
      dragons: [...this.state.dragons, newDragon]
    })


    //clear our form
    e.target.reset()
  };


  //delete a dragon :( 
    handleDelete = (selectedDragon) => {
      console.log('delete function in App')
      console.log(selectedDragon)

      //logic to delete a dragon 
      //remove THAT dragon from state
      this.setState({
        dragons: this.state.dragons.filter((dragon) => dragon != selectedDragon)
      })
    }

  render() {
    return (
      <div className="App">
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
      </div>
    );
  }
}

export default App;
