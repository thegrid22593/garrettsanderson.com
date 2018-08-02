<?php
/**
 * Template Name: Home
 * @package garrettsanderson
 */

get_header(); ?>
<?php 

$args = array( 'post_type' => 'product', 'posts_per_page' => 10 );
$loop = new WP_Query( $args );
while ( $loop->have_posts() ) : $loop->the_post();
endwhile;

?>

<?php $args = array( 'post_type' => '', 'posts_per_page' => 10 ); ?>
<?php $loop = new WP_Query( $args ); ?>
    <?php while ( $loop->have_posts() ) : $loop->the_post(); ?>
    
    <?php endwhile; ?>

<section class="skills-and-passions">
    <div class="wrapper">
        <div class="full">
            <h2>Skills and Passions</h2>
        </div>
        <div class="skill">
            <div class="skill-content">
                <h3>UI Design</h3>
                <p>Understanding the balance between the interface and the experience is critical to designing the right solution. An elegant and aesthetic interface is a vital part of any design and must be given the proper care it deserves.</p>
            </div>
        </div>
        <div class="skill">
            <div class="skill-content">
                <h3>UX Design</h3>
                <p>Sketching complex system problems is both rewarding and exciting. Solving problems with a user-centered approach is one of Paragon's strong points and is something we are extremely passionate about.</p>
            </div>
        </div>
        <div class="skill">
            <div class="skill-content">
                <h3>Development</h3>
                <p>With extensive knowledge of HTML5 and CSS3, as well as solid foundations in Jquery, PHP with WordPress, and SASS, Paragon is perfectly capable of building beautiful websites using the latest technologies and the best coding practices.</p>
            </div>
        </div>
    </div>
</section>

<section class="testimonials-container">
    <h3>Why People Believe In Me</h3>
    <h4>Testimonials</h4>
    <div class="testimonials"><button class="btn prev"><i class="icon icon-arrow-left"></i><div class="testimonial"><div class="avatar-details"><div class="avatar-details-container"><img class="avatar" src="test.jpg" alt=""/><h3 class="avatar-name">Name</h3><h5 class="avatar-title">Title</h5><span>Test</span><div class="testimonial-content-container"><p> </p></div></div></div></div><p>there are no testimonaials</p></button>
        <button
            class="btn next"><i class="icon icon-arrow-right"></i></button>
    </div>
</section>

<?php get_footer(); ?>
