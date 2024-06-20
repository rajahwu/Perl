      
  <?php if(isset($super_hero_image)) { ?>
    
    <div class="expanding-wrapper">
      <?php $image_url = url_for('/images/' . $super_hero_image); ?>
      <img id="super-hero-image" src="<?php echo $image_url; ?>" />
      <footer>
        <?php include(SHARED_PATH . '/public_copyright_disclaimer.php'); ?>
      </footer>
    </div>
    
  <?php } else { ?>
    
    <footer class="footer  bg-lime-400">
    <h2>FOOTER</h2>
    </footer>
    
  <?php } ?>

  </body>
</html>
