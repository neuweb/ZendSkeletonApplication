<?php

$basePath = dirname(__DIR__);
defined('BASE_PATH') || define('BASE_PATH', $basePath);
chdir($basePath);

// Composer autoloading
if (file_exists($basePath . '/vendor/autoload.php')) {
    $loader = include $basePath . '/vendor/autoload.php';
}
$modules = array();
if ($handle = opendir(BASE_PATH . '/test/module')) {
    while (false !== ($entry = readdir($handle))) {
        if ($entry !== "." && $entry !== "..") {
            $modules[] = $entry;
        }
    }
    closedir($handle);
}
foreach ($modules as $dir) {

    if ($dir !== "Bootstrap.php") {
        $loader->add($dir, BASE_PATH . '/test/module/' . $dir . '/src/' . $dir);
        if (file_exists(BASE_PATH . '/test/module/' . $dir . '/autoload_classmap.php')) {
            $classMap = require BASE_PATH . '/test/module/' . $dir . '/autoload_classmap.php';
            if ($classMap) {
                $loader->addClassMap($classMap);
            }
        }
    }
}
Zend\Mvc\Application::init(require $basePath . '/test/config/application.config.php');
