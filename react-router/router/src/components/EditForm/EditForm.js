import React from 'react'

export default class EditForm extends React.Component{
    state={
        selectedUser: {}
    }

    changeHandler = (e) => {
        let {name, value} = e.target
        this.setState({
            selectedUser:{
                [name]:value
            }
        })
    } 
    handleSubmit = (e) =>{
        e.preventDefault()
        const {selectedUser} = this.props.location.state
        const editedFields = this.state.selectedUser
        for(let el in editedFields){
            selectedUser[el] = editedFields[el]
        }
        this.props.handleEdit(selectedUser)
        this.props.history.push('users')
    }
    render(){
        const {selectedUser} = this.props.location.state 
    return(
        <div>
            {console.log(this.props.location.state.selectedUser)}
            {console.log(this.state)}
            <h1>Edit Form</h1>
            <hr/>
            <form onSubmit={this.handleSubmit}>
                <input onChange={this.changeHandler} type='text' name='name' placeholder='User Name' defaultValue={selectedUser.name}/>
                <input onChange={this.changeHandler} type='text' name='email' placeholder='User Email' defaultValue={selectedUser.email}/>
                <input type="submit"/>
            </form>
        </div>
    )
}
}