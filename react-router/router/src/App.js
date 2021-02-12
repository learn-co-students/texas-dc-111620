import React from "react";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";

import Home from "./components/Home/Home";
import About from "./components/About/About";
import Users from "./components/Users/Users";
import EditForm from "./components/EditForm/EditForm";

export default class App extends React.Component {
  state = {
    users: [
      {
        id:1,
        name: "Meredith",
        email: "meredith@meredith.com",
      },
      {
        id:2,
        name: "Blaire",
        email: "blaire@blaire.com",
      },
      {
        id:3,
        name: "Scott",
        email: "scott@scott.com",
      },
    ],
  };


  handleEdit = (editedUser) => {
      this.setState({
        users:[...this.state.users.map(u=> u.id == editedUser.id ? editedUser : u)]
      })

  }
  render() {
    return (
      <Router>
        <div>
          <nav>
            <ul>
              <li>
                <Link to="/">Home</Link>
              </li>
              <li>
                <Link to="/about">About</Link>
              </li>
              <li>
                <Link to="/users">Users</Link>
              </li>
            </ul>
          </nav>

          {/* A <Switch> looks through its children <Route>s and
            renders the first one that matches the current URL. */}
          <Switch>
            <Route exact path="/">
              {console.log("Home Route")}
              <Home />
            </Route>
            <Route path="/about">
              {console.log("About Route")}
              <About />
            </Route>
            <Route
              path="/users"
              render={(routerProps) => {
                return(<Users users={this.state.users} {...routerProps} />);
              }}
            />
            <Route path="/editForm"
            render={(routerProps)=> <EditForm {...routerProps} handleEdit ={this.handleEdit}/>}
            
            />
          </Switch>
        </div>
      </Router>
    );
  }
}
