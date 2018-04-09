import React, { Component } from 'react';

class ProjectItem extends Component {
   constructor(props) {
      super(props);
   }

   render() {
      const project = this.props.project;
      if (project.status === 'published') {
         return (
            <div className="project">
               <a href={project.liveURL} target="_blank">
                  <img
                     src={project.featuredImage}
                     alt={project.introDescription}
                  />
                  <div className="content">
                     <h4>{project.name}</h4>
                     <h5>{project.type_of_development}</h5>
                     <h6>Built With: {project.built_with}</h6>
                  </div>
               </a>
            </div>
         );
      }
      return false;
   }
}

export default ProjectItem;
