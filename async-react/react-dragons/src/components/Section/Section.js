import ClassDragonCard from '../DragonCard/ClassDragonCard'

function Section(props){
    console.log('Section.js outside return')
    return(
        <div>
            {console.log('Section.js inside return')}
            <h2>{props.title}</h2>
            {props.dragons.map(dragon => <ClassDragonCard dragon={dragon} toggleDragon={props.toggleDragon} handleDelete={props.handleDelete}/>)}
        </div>
    )
}

export default Section;