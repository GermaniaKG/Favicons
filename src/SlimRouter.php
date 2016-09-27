<?php
namespace Germania\Favicons;

use Twig_Environment;
use Slim\App;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;

class SlimRouter
{
    public function __construct( App $app, Twig_Environment $twig, $favicon_data)
    {
        $app->get('/browserconfig.xml', function (Request $request, Response $response) use ($twig, $favicon_data) {
            $output = $twig->render('favicons.browserconfig.xml.tpl', $favicon_data);

            $newResponse = $response->withHeader('Content-type', 'application/xml');
            $newResponse->getBody()->write($output);

            return $newResponse;
        });


        $app->get('/manifest.json', function (Request $request, Response $response) use ($twig, $favicon_data) {
            $output = $twig->render('favicons.manifest.json.tpl', $favicon_data);

            $newResponse = $response->withHeader('Content-type', 'application/manifest+json');
            $newResponse->getBody()->write($output);

            return $newResponse;
        });


    }
}
