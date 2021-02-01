import React from "react";

const dragons = [
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
];
function App() {
  return (
    <div className="App">
      {/* I want to iterate through my dragons and 
      for EVERY dragon I want a DragonCard */}
      {dragons.map((dragon) => (
        <DragonCard dragon={dragon} message={'this is my not unique message'}/>
      ))}
    </div>
  );
}
// div
// h3
// p
// img
function DragonCard(props){
return (
  <div>
    {console.log(props, "these are my props in DragonCard")}
    <h3> {props.dragon.name} </h3>
    <p> {props.dragon.description} </p>
    <img style={{width:'100px'}} src={props.dragon.image}/>
  </div>
);
}

// class DragonCard extends React.Component {
//   render() {
//     return (
//     );
//   }
// }

export default App;
