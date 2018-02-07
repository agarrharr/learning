/** @jsx React.DOM */

'use strict'

var React = require('react')
var ReactDom = require('react-dom')
var Hello = require('./Hello')

ReactDOM.render(<Hello />, document.getElementById('content'))
