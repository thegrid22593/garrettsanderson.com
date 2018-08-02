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

<header>


</header>
