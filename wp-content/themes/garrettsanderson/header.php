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
<title><?php the_title();?></title>

<!-- INCLUDE THE HEADER -->
<?php wp_head();?>

<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo('pingback_url');?>">
<link rel="shortcut icon" href="<?php echo the_field('favicon', 'option'); ?>"/>
<link rel="apple-touch-icon" href="<?php echo the_field('favicon', 'option'); ?>">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:400,500,700" rel="stylesheet">

<!-- ANALYTICS -->
 <script>
 (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
 (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
 m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
 })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

 ga('create', '<?php echo the_field('google_analytics', 'option'); ?>', 'auto');
 ga('send', 'pageview');
 </script>

<?php if ($goto) {?>
  <script>
    $( document ).ready(function() {
    goToByScroll('<?php echo $goto; ?>');
    });
  </script>
<?php }?>


</head>

<body id="top" class="preload <?php if (is_single() || is_archive()) {echo 'news';} else {the_slug();}?>">

<a id="uplink" class="twhite pad1 scrollto" href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>

<header>
    <section class="top-nav-container">
        <nav class="top-nav">
            <div class="logo">
                <a class="main-logo" href="<?php echo site_url(); ?>">
                    <i class="icon icon-logo"></i>
                </a>
            </div>
            <div class="navigation-icons">
                <?php get_template_part('template-parts/content-main-nav');?>
            </div>
            <div class="mobile-nav-toggle">
                <i class="icon icon-menu-bars"></i>
            </div>
        </nav>
    </section>

    <section class="mobile-nav">
        <div class="mobile-nav-container">
            <div class="navigation">
                <?php get_template_part('template-parts/content-main-nav');?>
            </div>
            <div class="close-mobile-nav"><i class="icon icon-close"></i></div>
        </div>
    </section>

    <?php if (is_front_page()): ?>
        <section class="central-display">
            <div class="headlines">
                <h1>Garrett Sanderson</h1>
                <h3>Web Developer &amp; Designer In Orange County, CA</h3>
                <div class="divider"></div>
                <a href="<?php site_url();?>/portfolio"><button class="btn-main white outline"><i class="icon icon-work"></i>View Portfolio</button></a>
                <a href="<?php site_url();?>/blog"><button class="btn-main white outline">My Thoughts</button></a>
                <!-- <nav class="central-display-nav">
                    <ul>
                        <li class="active"><a href="/"> <i class="icon icon-home">Home</i></a></li>
                        <li><a href="/projects"> <i class="icon icon-projects">Projects</i></a></li>
                        <li><a href="/services"> <i class="icon icon-services">Services</i></a></li>
                        <li><a href="/about"> <i class="icon icon-about">About</i></a></li>
                        <li><a href="/resume"> <i class="icon icon-resume">Resume</i></a></li>
                        <li><a href="/contact"> <i class="icon icon-contact">Contact</i></a></li>
                    </ul>
                </nav> -->
            </div>
            <div class="overlay"></div>
        </section>
    <?php endif;?>
</header>
