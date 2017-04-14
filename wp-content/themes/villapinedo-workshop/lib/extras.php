<?php

namespace Roots\Sage\Extras;

use Roots\Sage\Setup;

/**
 * Add <body> classes
 */
function body_class( $classes ) {
	// Add page slug if it doesn't exist
	if ( is_single() || is_page() && ! is_front_page() ) {
		if ( ! in_array( basename( get_permalink() ), $classes ) ) {
			$classes[] = basename( get_permalink() );
		}
	}

	// Add class if sidebar is active
	if ( Setup\display_sidebar() ) {
		$classes[] = 'sidebar-primary';
	}

	return $classes;
}

add_filter( 'body_class', __NAMESPACE__ . '\\body_class' );

/**
 * Clean up the_excerpt()
 */
function excerpt_more() {
	return ' &hellip; <a href="' . get_permalink() . '">' . __( 'Continued', 'sage' ) . '</a>';
}

add_filter( 'excerpt_more', __NAMESPACE__ . '\\excerpt_more' );


function add_homework_sliders( $homework ) {
	echo "<pre>";

	echo '<h1>TEST</h1>';

	print_r( $homework );

	echo "</pre>";

	die();
}

add_action( 'namaste_add_homework', __NAMESPACE__ . '\\add_homework_sliders' );


//function wpa18013_add_pages_to_dropdown( $pages, $r ){
//  if('page_on_front' == $r['name']){
//    $args = array(
//        'post_type' => 'post'
//    );
//    $stacks = get_posts($args);
//    $pages = array_merge($pages, $stacks);
//  }
//
//  return $pages;
//}
//add_filter( 'get_pages', 'wpa18013_add_pages_to_dropdown', 10, 2 );

/**
 * @param $query
 */
//function enable_front_page_stacks( $query ){
//  if('' == $query->query_vars['post_type'] && 0 != $query->query_vars['page_id'])
//    $query->query_vars['post_type'] = array( 'page', 'post' );
//}
//add_action( 'pre_get_posts', 'enable_front_page_stacks' );