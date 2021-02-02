import ClassDragonCard from '../DragonCard/ClassDragonCard'

function Section(props){
    console.log(props)
    return(
        <div>
            <h2>{props.title}</h2>
            {props.dragons.map(dragon => <ClassDragonCard dragon={dragon} toggleDragon={props.toggleDragon}/>)}
        </div>
    )
}

export default Section;