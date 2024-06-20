<!doctype html>

<html lang="en">

<head>
  <title>php oop mysql <?php if (isset($page_title)) {
                          echo '- ' . h($page_title);
                        } ?></title>
  <meta charset="utf-8">
  <link rel="stylesheet" media="all" href="<?php echo url_for('/stylesheets/public.css'); ?>" />
  <script defer src="<?php echo url_for('/js/public.js') ?>"></script>
</head>

<body>

  <header class="navbar bg-lime-400">
    <nav>
      <a class="text-lg" href="<?php url_for('/public/index.php') ?>">HOME</a>
    </nav>
  </header>