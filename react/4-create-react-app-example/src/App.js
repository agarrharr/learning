import React, { Component } from 'react';
import Button from './Button';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <Button type="alert">What's up</Button>
      </div>
    );
  }
}

export default App;
