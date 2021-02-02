function FunctionalDragonCard(props) {
  return (
    <div>
      {console.log(props, "these are my props in FunctionalDragonCard")}
      <h3> {props.dragon.name} </h3>
      <p> {props.dragon.description} </p>
      <img style={{ width: "100px" }} src={props.dragon.image} />
    </div>
  );
}

export default FunctionalDragonCard;
