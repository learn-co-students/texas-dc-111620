import React from "react";
import PaintingCard from "./PaintingCard";

function PaintingList(props) {
  console.log(props.paintingObjs);
  return (
    <div>
      <button onClick={props.clickAction}>Click for Auth fetch</button>
      {props.paintingObjs.map((painting) => {
        return <PaintingCard painting={painting} key={painting.id} />;
      })}
    </div>
  );
}

export default PaintingList;
