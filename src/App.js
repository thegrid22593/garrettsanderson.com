import React, { Component } from 'react';
import './App.css';

import Header from './Header';
import Projects from './Projects/index';
import Footer from './Footer';

class App extends Component {
   render() {
      return (
         <div className="app">
            <Header />
            <Projects />
            <Footer />
         </div>
      );
   }
}

export default App;
