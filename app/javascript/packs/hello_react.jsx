// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import CircularProgress from '@material-ui/core/CircularProgress';

const Hello = props => (
  <div>Hello {props.name}!</div>
)

Hello.defaultProps = {
  name: 'David'
}

Hello.propTypes = {
  name: PropTypes.string
}



document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})

var HelloMessage = React.createClass({
  render: function() {
    return (
      <h1>Hello {this.props.name}!</h1>
    )
  }
});



function App() {
  return (
    <div>
      <h2>これはReactです。</h2>
      <CircularProgress />
    </div>
  )
}

export default App