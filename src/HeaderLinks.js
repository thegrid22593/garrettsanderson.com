import React, { Component } from 'react';

class HeaderLinks extends Component {
   constructor() {
      this.state = {
         links: [
            {
               icon: '',
               name: 'LinkedIn',
            },
            {
               icon: '',
               name: 'GitHub',
            },
         ],
      };
   }
   render() {
      return (
         <ul className="header-links">
            {this.state.links.map(link => {
               return <li>{link.name}</li>;
            })}
         </ul>
      );
   }
}
