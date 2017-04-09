<?php use Roots\Sage\Titles; ?>

<header class="banner">
  <div class="container">
    <a class="brand" href="<?= esc_url(home_url('/')); ?>"><img src="<?= get_stylesheet_directory_uri() . "/assets/images/logo.png"; ?>"></a>
    <nav class="nav-primary">
      <?php
      if (has_nav_menu('primary_navigation')) :
        wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav']);
      endif;
      ?>
    </nav>
  </div>
</header>

<div class="banner-header" style="background-image: url('<?= get_stylesheet_directory_uri() . '/assets/images/zen.jpg'; ?>')">
  <h1><?= Titles\title(); ?></h1>
</div>

