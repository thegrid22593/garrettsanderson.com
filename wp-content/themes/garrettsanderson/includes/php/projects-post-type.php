<?php

// ************ CREATE PROJECTS POST TYPE **************** //

add_action('init', 'create_projects_post_type');

function create_projects_post_type() {

  $labels = array(
    'name' => __('Projects'),
    'singular_name' => __('Project'),
    'all_items' => __('All Projects'),
    'add_new' => _x('Add new Project', 'Project'),
    'add_new_item' => __('Add new Project'),
    'edit_item' => __('Edit Project'),
    'new_item' => __('New Project'),
    'view_item' => __('View Project'),
    'search_items' => __('Search in Project'),
    'not_found' =>  __('No Projects found'),
    'not_found_in_trash' => __('No Projects found in trash'),
    'parent_item_colon' => ''
  );
  $args = array (
    'labels' => $labels,
    'public' => true,
    'has_archive' => true,
    'menu_icon' => 'dashicons-images-alt',
    'rewrite' => array('slug' => '/projects'),
    'taxonomies' => array( /*'category',*/ 'project'),
    'query_var' => true,
    'menu_position' => 22,
    'supports'=> array('thumbnail' , /*'custom-fields',*/ 'title', 'editor', 'excerpt'),
    'show_in_rest'       => true,
    'rest_base'          => 'projects',
    'rest_controller_class' => 'WP_REST_Posts_Controller',
  );
  register_post_type('projects', $args);
}

// ************ GIVE PROJECTS ITS OWN CATEGORIES **************** //

function my_taxonomies_project() {
  $labels = array(
    'name'              => _x( 'Project Categories', 'taxonomy general name' ),
    'singular_name'     => _x( 'Project Category', 'taxonomy singular name' ),
    'search_items'      => __( 'Search Project Categories' ),
    'all_items'         => __( 'All Project Categories' ),
    'parent_item'       => __( 'Parent Project Category' ),
    'parent_item_colon' => __( 'Parent Project Category:' ),
    'edit_item'         => __( 'Edit Project Category' ),
    'update_item'       => __( 'Update Project Category' ),
    'add_new_item'      => __( 'Add New Project Category' ),
    'new_item_name'     => __( 'New Project Category' ),
    'menu_name'         => __( 'Project Categories' ),
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
  register_taxonomy( 'project_category', 'projects', $args );
}
add_action( 'init', 'my_taxonomies_project', 0 );

?>
