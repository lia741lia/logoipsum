<?php

require_once __DIR__ . '/router.php';

get('/', 'pages/index.php');
get('/signin', 'pages/auth/signin.php');
get('/signup', 'pages/auth/signup.php');

any('/404', 'pages/404.php');
