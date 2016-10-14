<?php

/*
 * This is a global php-cs-fixer config file.
 */
return Symfony\CS\Config::create()
    // use default SYMFONY_LEVEL with additional filters and some removed (-)
    ->fixers(array(
        '-concat_without_spaces',
        'align_double_arrow',
        'concat_with_spaces',
        'newline_after_open_tag',
        'ordered_use',
        'phpdoc_order',
        'short_array_syntax',
    ))
    ->finder(
        Symfony\CS\Finder::create()
            ->exclude('vendor')
            ->ignoreDotFiles(true)
            ->ignoreVCS(true)
            ->in(__DIR__)
    )
;

// vim: ft=php
