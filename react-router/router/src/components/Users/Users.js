import UserComponent from './UserComponent'


export default function Users(props) {
    console.log('Users Component')
    let handleclick = (selectedUser) =>{
        console.log('clicking from users component')
        // console.log(props.history.push)
        props.match.params.selectedUser = selectedUser
        
        props.history.push({
            pathname: '/editForm',
            state: { selectedUser: selectedUser }
          }) //baseurl with endpoint 
        //localhost:3000/<whatever we pushed>
    }
   return(
       <div>
           <h1>Users</h1>
           <hr/>
           {props.users.map((user)=>{
              return(<UserComponent user={user} handleClick={handleclick}/>) 
           })}
       </div>
   )
  }