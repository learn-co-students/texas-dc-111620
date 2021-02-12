import React from 'react'
import {Link} from 'react-router-dom'

function NavBar(){
    const handleLogout = () =>{
        localStorage.clear()
    }

    
    return(
        <div className="ui inverted red menu">
            <a className="item" href={"/"}>
            <h2 className="ui header">
            <i className="paint brush icon" />
            <div className="content">Painting App</div>
            </h2>
            </a>
            <div className="item">
            <h2 className="ui header">
                <div className="content">
                    <Link to="/paintings" style={{color: "black"}}>Paintings</Link>
                </div>
            </h2>
            </div>
            <div className="item">
            <h2 className="ui header">
                <div className="content">
                <Link to="/login" style={{color: "black"}}>Login</Link>

                </div>
            </h2>
            </div>
            <div className="item">
            <h2 className="ui header">
                <div className="content">
                <button onClick={handleLogout}>Logout</button>
                </div>
            </h2>
            </div>
            
        </div>
    )
}

export default NavBar