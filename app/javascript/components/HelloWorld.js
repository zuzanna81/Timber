import React, {Component} from "react"
import PropTypes from "prop-types"
class HelloWorld extends Component {
  render () {
    return (
      <div>
        <div>Hello {this.props.greeting}</div>
      </div>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};

export default HelloWorld
