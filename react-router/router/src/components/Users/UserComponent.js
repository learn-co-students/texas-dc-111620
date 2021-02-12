export default function UserComponent(props){
    return(
        <div>
            <h2>{props.user.name}</h2>
            <h4>{props.user.email}</h4>
            <button onClick={()=>props.handleClick(props.user)}>Edit User</button>
        </div>
    )
}