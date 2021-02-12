import React, {Component} from 'react'


class DragonForm extends Component{
    //state goes here
 
    //atWar attribute should be false by default 
    //we want peaceful dragons
    
    render(){
        return(
            <form onSubmit={this.props.handleSubmit}>
                <input type="text" name="name" placeholder="name"/>
                <input type="text" name="image"placeholder="image"/>
                <input type="text" name="description"placeholder="description"/>
                <input type="submit"/>

            </form>
        );
    }
}


export default DragonForm;