<?php
/**
 * @package client-theme
 */
global $scriptsHeader;

// Scroll to ID on a page
if (isset($_GET["goto"])) {
$goto = $_GET["goto"];
} else {
$goto = '';
}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#bbbbbb"/>
<title><?php the_title(); ?></title>

<!-- INCLUDE THE HEADER -->
<?php wp_head(); ?>

<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<link rel="shortcut icon" href="<?php echo the_field('favicon','option'); ?>"/>
<link rel="apple-touch-icon" href="<?php echo the_field('favicon','option'); ?>">

<?php
$iphone = strpos($_SERVER['HTTP_USER_AGENT'],"iPhone");
$android = strpos($_SERVER['HTTP_USER_AGENT'],"Android");
$palmpre = strpos($_SERVER['HTTP_USER_AGENT'],"webOS");
$berry = strpos($_SERVER['HTTP_USER_AGENT'],"BlackBerry");
$ipod = strpos($_SERVER['HTTP_USER_AGENT'],"iPod");
$ipad = strpos($_SERVER['HTTP_USER_AGENT'],"iPad");
if ($iphone || $android || $palmpre || $ipod || $berry || $ipad == true) { ?>
<!-- <link href="<?php bloginfo('template_directory'); ?>/includes/css/mobile.css" rel="stylesheet" type="text/css" /> -->
<?php } ?>

<!--[if lte IE 8]>
<link href="<?php //bloginfo('template_directory'); ?>/includes/css-ie.css" rel="stylesheet" type="text/css" media="all" />
<![endif]-->

<!-- ANALYTICS -->
 <script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

 ga('create', '<?php echo the_field('google_analytics','option'); ?>', 'auto');
 ga('send', 'pageview');
 </script>

<?php if($goto ) { ?>
  <script>
    $( document ).ready(function() {
    goToByScroll('<?php echo $goto; ?>');
    });
  </script>
<?php } ?>

<!-- INCLUDED SCRIPTS -->
<?php
  if (!empty($scriptsHeader)) {
  	scriptPrint($scriptsHeader);
  }
?>

</head>

<body id="top" class="preload <?php if(is_single() || is_archive()) { echo 'news'; } else { the_slug(); } ?>">

<a id="uplink" class="twhite pad1 scrollto" href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>

<!--[if lt IE 7]>
    <div class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</div>
<![endif]-->

<header>

  <div id="headertop" class="fullbg fixedbg bgprimary">
  <div class="wrapper clearfix">

    <div id="topsnipe" class="cycle-slideshow"  data-cycle-timeout="6000" data-cycle-speed="1000" data-cycle-slides="> h2" >
      <?php if( have_rows('top_snipe','options') ): ?>
          <?php while( have_rows('top_snipe','options') ): the_row();
            $snipeframe = get_sub_field('snipe_frame');
            $snipelink = get_sub_field('snipe_link');
          ?>
          <h2 class="open-sans-semi-bold">
          <?php if( $snipelink ): ?><a  class="tcenter" href="<?php echo $snipelink; ?>"><?php endif; ?>
          <?php echo $snipeframe; ?>
          <?php if( $snipelink ): ?></a><?php endif; ?>
          </h2>
          <?php endwhile; ?>
        <?php endif; ?>
    </div>

    <div id="topsocial" class="clearfix">
      <h2 id="topnumber" class="left tcenter open-sans-semi-bold"><?php echo the_field('phone','option'); ?></h2>
      <ul class="right">
          <?php get_template_part( 'content-social' ); ?>
      </ul>
    </div>

    </div>
  </div>

  <?php wp_nav_menu( array( 'theme_location' => 'main-menu', 'container'=>false, 'menu_class'=> 'main-menu' ) ); ?>

</header>

<div id="slider" class="cycle-slideshow" data-cycle-fx="scrollHorz" data-cycle-speed="500" data-cycle-timeout="5000" data-cycle-slides="> .slide">

  <?php if (is_page('home')) { $images = get_field('home_slides'); ?> // Home Page

    <?php foreach( $images as $image ): ?>
    <div class="slide cover parallax-left responsive-background-image"><?php acf_responsive_image($image); ?></div>
    <?php endforeach; ?>

    <h1><?php echo the_field('slide_title'); ?></h1>

  <?php } else if (is_home() || is_single() || is_category()) { $images = get_field('top_slides', 64); ?> // News section

    <?php foreach( $images as $image ): ?>
      <div class="slide cover parallax-left responsive-background-image"><?php acf_responsive_image($image); ?></div>
    <?php endforeach; ?>

  <?php } else if (is_page() && $post->post_parent > 0) { $images = get_field('top_slides', $post->post_parent); ?> // Child Page

  <?php foreach( $images as $image ): ?>
    <div class="slide cover parallax-left responsive-background-image"><?php acf_responsive_image($image); ?></div>
  <?php endforeach; ?>

<?php } else { $images = get_field('top_slides');  ?> // All Others

    <?php foreach( $images as $image ): ?>
      <div class="slide cover parallax-left responsive-background-image"><?php acf_responsive_image($image); ?></div>
    <?php endforeach; ?>
  <?php } ?>

  <a id="downarrow" class="scrollto" href="#homeintro"><img src="<?php echo get_template_directory_uri(); ?>/images/home/arrow-down.svg"></a>

</div>
