<?php
/**
 * @package client-theme
 */

/* INCLUDE PAGE SCRIPTS */

$scriptsHeader = '';
$scriptsFooter = '';

get_header(); ?>

<section id="intro" class="bgwhite pad2">
	<div class="wrapper clearfix">

		<?php get_sidebar(); ?>

	</div>
</section> <!-- / #homeSubhead -->

<section id="news-content">
	<?php if (have_posts()) : ?>
		<?php while (have_posts()) : the_post(); ?>
			<h1><?php the_title(); ?></h1>
		<?php endwhile; ?>
	<?php endif; ?>
</section>

<?php get_footer(); ?>
