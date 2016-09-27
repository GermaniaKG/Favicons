<?php
namespace tests;

use Germania\Favicons\Favicons;


class FaviconsTest extends \PHPUnit_Framework_TestCase
{

    public function testSimpleInstantiation() {

        $sut = new Favicons;
        $templates_path = $sut->getTemplatesPath();

        $this->assertInternalType( "string", $templates_path );
        $this->assertTrue( is_dir( $templates_path ));
        $this->assertTrue( is_readable( $templates_path ));
    }

}
