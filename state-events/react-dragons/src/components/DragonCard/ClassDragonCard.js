import React, { Component } from "react";

class ClassDragonCard extends Component {
  //component code goes here
 
  render() {
    return (
      <div onClick={() => this.props.toggleDragon(this.props.dragon)}>
        {console.log(this.props, "these are my props in ClassDragonCard")}
        {console.log(this.props.dragon.atWar)}
        {console.log(this.props.justine)}
        <h3> {this.props.dragon.name} </h3>
        <p> {this.props.dragon.description} </p>
        <img style={{ width: "100px" }} src={this.props.dragon.image} />
      </div>
    );
  }
}

export default ClassDragonCard;
