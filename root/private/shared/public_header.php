<!doctype html>

<html lang="en">

<head>
  <title>php oop mysql <?php if (isset($page_title)) {
                          echo '- ' . h($page_title);
                        } ?></title>
  <meta charset="utf-8">
  <link rel="stylesheet" media="all" href="<?php echo url_for(PUBLIC_PATH . '/dist/bundle.css'); ?>" />
  <script defer src="<?php echo url_for(PUBLIC_PATH . '/dist/js/bundle.js') ?>"></script>
</head>

<body>

  <header class="navbar bg-lime-400">
    <nav>
      <a class="text-lg" href="<?php url_for('/public/index.php') ?>">HOME</a>
    </nav>
  </header>