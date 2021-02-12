import ClassDragonCard from '../DragonCard/ClassDragonCard'

function Section(props){
    console.log('Section.js outside return')
    return(
        <div style={{float: "left", backgroundColor: props.title == "Home" ? 'green' : 'red', width:'50%', height:'100%'}}>
            {console.log('Section.js inside return')}
            <h2>{props.title}</h2>
            {props.dragons.map(dragon => <ClassDragonCard dragon={dragon} toggleDragon={props.toggleDragon} handleDelete={props.handleDelete}/>)}
        </div>
    )
}

export default Section;