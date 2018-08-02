<?php
/**
 * Template Name: Single Portfolio
 * @package garrettsanderson
 */

get_header(); ?>

<section class="project-detail-container">
    <div class="project-detail">
        <div class="project-detail-header">
            <h1>Name</h1>
            <p class="built-with">Built With: </p><a href="" target="_blank"><button class="live-site-btn" type="button" name="button">See Live Site</button></a></div>
        <hr/>
        <div class="project-detail-content">
            <aside class="project-detail-sidebar">
                <nav class="project-navigation">
                    <h5>Project Timeline
                        <ul>
                            <li><i class="icon-description">Project Background</i></li>
                            <li><i class="icon-technology">Technologies Used</i></li>
                            <li><i class="icon-user-interface">User Interface</i></li>
                            <li><i class="icon-user-experience">User Experience</i></li>
                        </ul>
                    </h5>
                </nav>
            </aside>
            <div class="project-content">
                <h2>Project Background</h2>
                <p>
                    <div class="project-image"><img src="" alt="" /></div>
                    <div class="col-md-8 col-lg-9 col-sm-12">
                        <div class="project-technologies"></div>
                    </div>
                    <p>there are no images for this project</p>
                </p>
            </div>
        </div>
        <section class="tech-used">
            <h2>Technology Used</h2>
            <p> </p>
        </section>
    </div>
</section>

<?php get_footer(); ?>