import React from "react";
import "semantic-ui-css/semantic.min.css";
import NavBar from "./NavBar";
import PaintingList from "./PaintingList";
import PaintingForm from "./PaintingForm";
import { BrowserRouter, Route, Switch } from "react-router-dom";
import Login from "./Login";

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      form: false,
      paintings: [],
    };
  }

  addPainting = (e) => {
    e.preventDefault();

    let newPainting = {
      title: e.target[0].value,
      image: e.target[1].value,
      artist: {
        name: e.target[2].value,
      },
    };

    let newArr = [...this.state.paintings, newPainting];

    this.setState({
      paintings: newArr,
    });
  };

  // componentDidMount(){
  //   fetch('http://localhost:3000/api/v1/paintings')
  //   .then(res=>res.json())
  //   .then(data=>{
  //     this.setState({
  //       paintings: data
  //     })
  //   })
  // }

  testAuthRoute = () => {
    console.log('button clicked')
    let reqPackage = {
      headers:{
        "Authorization": `Bearer ${localStorage.token}`
      }
    }
    fetch('http://localhost:3000/api/v1/paintings', reqPackage)
    .then(res=>res.json())
    .then(data=>{
      console.log('fetch n auth route')
      this.setState({
        paintings:data
      })
    })
  }

  render() {
    return (
      <BrowserRouter>
        <div>
          <NavBar />
          <Switch>
            <Route
              path="/paintings/new"
              render={(routeProps) => (
                <PaintingForm {...routeProps} add={this.addPainting} />
              )}
            />

            <Route
              path="/paintings"
              render={(routeProps) => (
                <PaintingList paintingObjs={this.state.paintings} clickAction={this.testAuthRoute} {...routeProps}/>
              )}
            />
            <Route
              path="/login"
              render={(routeProps) => (
                <Login {...routeProps}/>
              )}
            />
            

            
          </Switch>
        </div>
      </BrowserRouter>
    );
  }
}

export default App;
