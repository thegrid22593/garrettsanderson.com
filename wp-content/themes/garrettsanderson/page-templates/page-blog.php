<?php
/**
 * Template Name: Blog
 * @package garrettsanderson
 */

get_header(); ?>

<?php if (have_posts()) : ?>
    <?php while (have_posts()) : the_post(); ?>
        <?php the_title(); ?>
    <?php endwhile; ?>
<?php endif; ?>


<?php get_footer(); ?>