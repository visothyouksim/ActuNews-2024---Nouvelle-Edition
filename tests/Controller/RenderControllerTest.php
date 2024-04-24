<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

class RenderControllerTest extends WebTestCase
{
    private $client;
    private $entityManager;

    protected function setUp(): void
    {
        $this->client = static::createClient();
        $this->entityManager = $this->client->getContainer()->get('doctrine')->getManager();
    }

    public function testRenderSidebar(): void
    {
        $this->client->request('GET', 'components/_sidebar.html.twig');
        $response = $this->client->getResponse();

        $this->assertEquals(Response::HTTP_OK, $response->getStatusCode());
        $this->assertStringContainsString('<div id="sidebar">', $response->getContent());
    }

    public function testRenderNavigation(): void
    {
        $this->client->request('GET', 'components/_nav.html.twig');
        $response = $this->client->getResponse();

        $this->assertEquals(Response::HTTP_OK, $response->getStatusCode());
        $this->assertStringContainsString('<nav id="navigation">', $response->getContent());
    }
}