<?php
namespace tests;

use Germania\Favicons\SlimRouter;
use Twig_Loader_Filesystem;
use Twig_Environment;

class SlimRouterTest extends \PHPUnit\Framework\TestCase
{


    public function testSimpleInstantiation() {

        #$tp = dirname(dirname(__DIR__)) . "/templates";
        #$tf = new Twig_Loader_Filesystem( $tp );
        #$twig = new Twig_Environment( $tf );

        $twig_mock = $this->prophesize( Twig_Environment::class );
        $twig_mock->render()->willReturn("");
        $twig = $twig_mock->reveal();

        $slim = new \Slim\App;

        $favicon_data = [];
        $sut = new SlimRouter( $slim, $twig, $favicon_data);

    }

}
