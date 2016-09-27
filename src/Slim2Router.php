<?php
namespace Germania\Favicons;

use Slim\Slim;
use Twig_Environment;

class Slim2Router
{
    public function __construct( Slim $app, Twig_Environment $twig, $favicon_data)
    {

        $app->get('/browserconfig.xml', function() use ( $app, $twig, $favicon_data ) {
            $output = $twig->render('favicons.browserconfig.xml.tpl', $favicon_data);
            $app->response->headers->set('Content-Type', 'application/xml');
            $app->response->setBody( $output );
        });

        $app->get('/manifest.json', function() use ( $app, $twig, $favicon_data ) {
            $output = $twig->render('favicons.manifest.json.tpl', $favicon_data);
            $app->response->headers->set('Content-Type', 'application/manifest+json');
            $app->response->setBody( $output );
        });
    }
}
