<?php
namespace Germania\Favicons;

use Slim\Slim;

class Favicons
{

    public $directory_separator = DIRECTORY_SEPARATOR;

    /**
     * Returns the installation path of the Favicon templates.
     *
     * @return string
     * @uses   $directory_separator
     */
    public function getTemplatesPath()
    {
        return realpath( join($this->directory_separator,  [ __DIR__ , '..', 'templates'] ));
    }
}
