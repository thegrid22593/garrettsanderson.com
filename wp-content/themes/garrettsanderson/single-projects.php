<?php
/**
 * Template Name: Single Portfolio
 * @package garrettsanderson
 */

get_header();?>

<section class="project-detail-container">
    <div class="project-detail">
        <div class="project-detail-header">
            <h1><?php the_field('project_title');?></h1>
            <p class="built-with">Built With: <?php the_field('tech_stack');?></p><a href="<?php the_field('live_url');?>" target="_blank"><button class="live-site-btn" type="button" name="button">See Live Site</button></a></div>
        <hr/>
        <div class="project-detail-content">
            <div class="project-content">
                <h6>Project Video</h6>
                <div class="project-video-player" data-vimeo-id="<?php the_field('vimeo_video_id');?>"></div>
                <h6>Project Description</h6>
                <p><?php the_field('project_description');?></p>

                <div class="project-image"><img src="<?php the_field('featured_image');?>" alt="" /></div>

                <div class="project-gallery">
                    <h6>Project Gallery</h6>
                    <?php $images = get_field('image_gallery');?>
                    <?php if ($images): ?>
                        <ul>
                            <?php foreach ($images as $image): ?>
                                <li>
                                    <img src="<?php echo $image['url']; ?>" alt="">
                                </li>
                            <?php endforeach;?>
                        </ul>
                    <?php endif;?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php get_footer();?>