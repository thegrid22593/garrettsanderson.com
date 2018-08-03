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


<section id="newsContent">

	<?php 
		if (have_posts()) :
		while (have_posts()) : the_post();
	?>

	<h1><?php the_title(); ?></h1>
	<?php the_content(); ?>

	<?php endwhile; endif; ?>
</section>

<?php get_footer(); ?>