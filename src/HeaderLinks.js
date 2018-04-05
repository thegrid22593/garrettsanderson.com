import React, { Component } from 'react';

class HeaderLinks extends Component {
   constructor() {
      super();
      this.state = {
         links: [
            {
               icon: 'fa fa-linkedin',
               name: 'LinkedIn',
               url: 'https://www.linkedin.com/in/garrett-sanderson-3b7b2070/',
            },
            {
               icon: 'fa fa-github',
               name: 'GitHub',
               url: 'https://github.com/thegrid22593',
            },
         ],
      };
   }
   render() {
      return (
         <ul className="header-links">
            {this.state.links.map(link => {
               return (
                  <li>
                     <a href={link.url} target="_blank">
                        <i className={link.icon} />
                     </a>
                  </li>
               );
            })}
         </ul>
      );
   }
}

export default HeaderLinks;
