[![Build Status](https://travis-ci.org/neuweb/ZendSkeletonApplication.svg?branch=master)](https://travis-ci.org/neuweb/ZendSkeletonApplication)
[![Latest Stable Version](https://poser.pugx.org/neuweb/zendskeletonapplication/v/stable.png)](https://packagist.org/packages/neuweb/zendskeletonapplication) [![Total Downloads](https://poser.pugx.org/neuweb/zendskeletonapplication/downloads.png)](https://packagist.org/packages/neuweb/zendskeletonapplication) [![Latest Unstable Version](https://poser.pugx.org/neuweb/zendskeletonapplication/v/unstable.png)](https://packagist.org/packages/neuweb/zendskeletonapplication) [![License](https://poser.pugx.org/neuweb/zendskeletonapplication/license.png)](https://packagist.org/packages/neuweb/zendskeletonapplication)
[![Coverage Status](https://coveralls.io/repos/neuweb/ZendSkeletonApplication/badge.png?branch=master)](https://coveralls.io/r/neuweb/ZendSkeletonApplication?branch=master)

ZendSkeletonApplication
=======================

Introduction
------------
This is a simple, skeleton application using the ZF2 MVC layer and module
systems. This application is meant to be used as a starting place for those
looking to get their feet wet with ZF2.


Installation
------------

Using Composer (recommended)
----------------------------
The recommended way to get a working copy of this project is to clone the repository
and use `composer` to install dependencies using the `create-project` command:

    curl -s https://getcomposer.org/installer | php --
    php composer.phar create-project neuweb/zendskeletonapplication /path/to/your/project

Alternately, clone the repository and manually invoke `composer` using the shipped
`composer.phar`:

    cd my/project/dir
    git clone git://github.com/neuweb/ZendSkeletonApplication
    cd ZendSkeletonBootstrap
    php composer.phar self-update
    php composer.phar install

(The `self-update` directive is to ensure you have an up-to-date `composer.phar`
available.)

Another alternative for downloading the project is to grab it via `curl`, and
then pass it to `tar`:

    cd my/project/dir
    curl -#L https://github.com/neuweb/ZendSkeletonApplication/tarball/master | tar xz --strip-components=1

You would then invoke `composer` to install dependencies per the previous
example.

Using Git submodules
--------------------
Alternatively, you can install using native git submodules:

    git clone git://github.com/neuweb/ZendSkeletonApplication --recursive

Virtual Host
------------
Afterwards, set up a virtual host to point to the public/ directory of the
project and you should be ready to go!

Alternatively — if you are using PHP 5.4 or above — you may start the internal PHP cli-server in the public
directory:

    cd public
    php -S 0.0.0.0:8080 index.php

This will start the cli-server on port 8080, and bind it to all network
interfaces.
