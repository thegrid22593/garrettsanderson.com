<?php
/**
 * @package client-theme
 */

global $scriptsFooter;

?>

<footer>
    <div class="footer-container">
        <div class="copyright">
            <div class="footer-logo"><i class="icon icon-logo"></i></div>
            <div class="copy">&copy; Copyright <?php echo date('Y'); ?> All Rights Reserved.</div>
        </div>
    </div>
</footer>

<style>
  /* Ensure elements load hidden before ScrollReveal runs */
  .js .reveal { visibility: hidden; }
</style>

<?php wp_footer();?>

</body>
</html>
