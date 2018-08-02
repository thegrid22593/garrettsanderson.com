<?php
/**
 * @package client-theme
 */

global $scriptsFooter;

?>

<footer id="footer">

</footer>

<script>
  // Change <html> classes if JavaScript is enabled
  document.documentElement.classList.remove('no-js');
  document.documentElement.classList.add('js');
</script>
<style>
  /* Ensure elements load hidden before ScrollReveal runs */
  .js .reveal { visibility: hidden; }
</style>

<?php wp_footer(); ?>

<?php
	if (!empty($scriptsFooter)) {
		scriptPrint($scriptsFooter);
	}
?>

<?php
if(get_field('footer_scripts', 'options')):
  the_field('footer_scripts', 'options');
endif;
?>


</body>
</html>
