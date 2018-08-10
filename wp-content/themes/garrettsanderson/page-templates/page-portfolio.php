<?php
/**
 * Template Name: Portfolio
 * @package garrettsanderson
 */

get_header();?>

<section class="projects-container">
    <div class="projects">
        <h1>Projects</h1>
        <ul class="project-list clearfix">
            <?php $loop = new WP_Query(array('post_type' => 'projects', 'posts_per_page' => 10));?>
            <?php while ($loop->have_posts()): $loop->the_post();?>
				                    <li class="project-item" style="background: url('<?php the_field('featured_image');?>');">
				                        <div class="project-details">
				                            <div class="project-title">
				                                <h2><?php the_field('project_title');?></h2>
				                            </div>
				                            <div class="project-description"><?php the_field('tech_stack');?></div>
				                            <a href="<?php the_permalink();?>"><button>View Project</button></a></div>
				                        <div class="overlay"></div>
				                    </li>
				            <?endwhile;?>
        </ul>
    </div>
</section>

<?php get_footer();?>