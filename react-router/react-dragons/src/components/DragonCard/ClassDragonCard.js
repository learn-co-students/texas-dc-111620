import React, { Component } from "react";

class ClassDragonCard extends Component {
  //component code goes here
componentDidMount(){
  console.log('ClassDragonCard.js in componentDidMount')
  

}
  render() {
    return (
      <div>
        <div onClick={() => this.props.toggleDragon(this.props.dragon)}>
          <h3> {this.props.dragon.name} </h3>
          <p> {this.props.dragon.description} </p>
          <img style={{ width: "100px" }} src={this.props.dragon.image} />
        </div>
        <button onClick={() => this.props.handleDelete(this.props.dragon)}>DELET THIS</button>
      </div>
    );
  }
}

export default ClassDragonCard;
