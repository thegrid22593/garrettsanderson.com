import React, { Component } from 'react';

class ProjectItem extends Component {
   constructor(props) {
      super(props);
   }

   render() {
      return (
         <div className="project">
            <img src={this.props.project.featuredImage} />
            <h4>{this.props.project.name}</h4>
            <h6>{this.props.project.built_with}</h6>
         </div>
      );
   }
}

export default ProjectItem;
