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
		<h1><?php the_title(); ?></h1>
	</div>
</section> <!-- / #homeSubhead -->

<aside class="blog-sidebar">
	<?php if (have_posts()) : ?>
		<div class="news-posts">
		<?php while (have_posts()) : the_post(); ?>
			<?php $image = get_field('featured_image'); ?>
				<div class="post">
					<div class="date">
						<div class="background-featured-image" style="background: url('<?php echo $image['url'];?>');?>"></div>
						<?php the_date('m/y'); ?>
					</div>
					<h5><a href="<?php the_permalink();?>"><?php the_title(); ?></a></h5>
				</div>
		<?php endwhile; ?>
		</div>
	<?php endif; ?>
</aside>

<section id="news-content">
	<?php if (have_posts()) : ?>
		<div class="news-posts">
		<?php while (have_posts()) : the_post(); ?>
			<?php $image = get_field('featured_image'); ?>
				<div class="post">
					<img src="<?php echo $image['url'];?>" alt="<?php echo $image['alt'];?>">
					<h2><a href="<?php the_permalink();?>"><?php the_title(); ?></a></h2>
				</div>
		<?php endwhile; ?>
		</div>
	<?php endif; ?>
</section>

<?php get_footer(); ?>
