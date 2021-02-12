import React, {Component} from 'react'

class Login extends Component{
    handleChange = (e) => {
        // debugger
        this.setState({
            [e.target.name]: e.target.value
        })
    }

    logIn = (e) => {
        e.preventDefault()

        fetch("http://localhost:3000/api/v1/login", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                username: this.state.username,
                password: this.state.password
            })
        })
        .then(res =>  res.json())
        .then(userInfo => {
            //we might not always get our userinfo having a token
            // what do we do in there's  an error?
            if(userInfo.token){
                //save token to localStorage
                localStorage.token = userInfo.token
                //redirect to PaintingsList
                this.props.history.push('/paintings')
            }
            else{
                //code to run to display error to user
                alert('there was an error in logging in')
            }
        })
    }
   
    render(){
        return(
        <div>
            <h2>LogIn</h2>
            <form onSubmit={(e) => this.logIn(e)}>
            <label>UserName</label>
            <input name="username" type="text" onChange={(e) => this.handleChange(e)}/>
            <label>Password</label>
            <input name="password" type="password" onChange={(e) => this.handleChange(e)}/>
            <input type="submit"/>
            </form>
        </div>
        )
    }
}


export default Login


