import React, { Component } from 'react';
import ProjectItem from '../ProjectItem/index';
import projectsData from '../fixtures/projects.json';

class Projects extends Component {
   constructor(props) {
      super(props);

      this.state = {
         projects: projectsData,
      };
   }
   render() {
      return (
         <section className="projects-container">
            {this.state.projects.map(project => {
               return <ProjectItem key={project.id} project={project} />;
            })}
         </section>
      );
   }
}

export default Projects;
