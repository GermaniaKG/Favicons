<?php
namespace tests;

use Germania\Favicons\SlimRouter;
use Twig_Loader_Filesystem;
use Twig_Environment;

class SlimRouterTest extends \PHPUnit_Framework_TestCase
{


    public function testSimpleInstantiation() {

        $twig = new Twig_Environment();
        $slim = new \Slim\Slim;

        $favicon_data = [];
        $sut = new SlimRouter( $slim, $twig, $favicon_data);

    }

}
