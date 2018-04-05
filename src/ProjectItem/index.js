import React, { Component } from "react";

class ProjectItem extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const project = this.props.project;
    return (
      <div className="project">
        <a href={project.liveURL} target="_blank">
          <img src={project.featuredImage} alt={project.introDescription} />
          <h4>{project.name}</h4>
          <h6>Built With: {project.built_with}</h6>
        </a>
      </div>
    );
  }
}

export default ProjectItem;
