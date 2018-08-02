<?php

// ************ CREATE TESTIMONIALS POST TYPE **************** //

add_action('init', 'create_testimonials_post_type');

function create_testimonials_post_type() {

  $labels = array(
    'name' => __('Testimonails'),
    'singular_name' => __('Testimonial'),
    'all_items' => __('All Testimonials'),
    'add_new' => _x('Add new Testimonial', 'Testimonial'),
    'add_new_item' => __('Add new Testimonial'),
    'edit_item' => __('Edit Testimonial'),
    'new_item' => __('New Testimonial'),
    'view_item' => __('View Testimonial'),
    'search_items' => __('Search in Testimonial'),
    'not_found' =>  __('No Testimonial found'),
    'not_found_in_trash' => __('No Testimonials found in trash'),
    'parent_item_colon' => ''
  );
  $args = array (
  'labels' => $labels,
  'public' => true,
  'has_archive' => true,
  'menu_icon' => 'dashicons-admin-multisite',
  'rewrite' => array('slug' => 'units'),
  'taxonomies' => array( /*'category',*/ 'unit'),
  'query_var' => true,
  'menu_position' => 22,
  'supports'=> array('thumbnail' , /*'custom-fields',*/ 'title', 'editor', 'excerpt'),
  'show_in_rest'       => true,
  'rest_base'          => 'testimonials',
  'rest_controller_class' => 'WP_REST_Posts_Controller',
  );
  register_post_type('testimonails', $args);
}

// ************ GIVE RESIDENCES ITS OWN CATEGORIES **************** //

function my_taxonomies_testimonial() {
  $labels = array(
    'name'              => _x( 'Testimonial Categories', 'taxonomy general name' ),
    'singular_name'     => _x( 'Testimonial Category', 'taxonomy singular name' ),
    'search_items'      => __( 'Search Testimonial Categories' ),
    'all_items'         => __( 'All Testimonial Categories' ),
    'parent_item'       => __( 'Parent Testimonial Category' ),
    'parent_item_colon' => __( 'Parent Testimonial Category:' ),
    'edit_item'         => __( 'Edit Testimonial Category' ),
    'update_item'       => __( 'Update Testimonial Category' ),
    'add_new_item'      => __( 'Add New Testimonial Category' ),
    'new_item_name'     => __( 'New Testimonial Category' ),
    'menu_name'         => __( 'Testimonial Categories' ),
    'show_admin_column' => true
  );
  $args = array(
    'labels' => $labels,
    'hierarchical' => true,
    'show_admin_column' => true,
    'show_in_rest'          => true,
    'rest_base'             => 'genre',
    'rest_controller_class' => 'WP_REST_Terms_Controller'
  );
  register_taxonomy( 'testimonial_category', 'testimonials', $args );
}
add_action( 'init', 'my_taxonomies_testimonials', 0 );

?>
