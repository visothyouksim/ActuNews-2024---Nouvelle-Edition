<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

class DefaultControllerTest extends WebTestCase
{
    public function testHomePage()
    {
        $client = static::createClient();
        $client->request('GET', '/');

        $this->assertResponseIsSuccessful();
        $this->assertResponseStatusCodeSame(Response::HTTP_OK);

        // Vérifier que la réponse contient les derniers articles
        $this->assertSelectorTextContains('h1', 'Derniers articles');
    }

    public function testContactPage()
    {
        $client = static::createClient();
        $client->request('GET', '/contact');

        $this->assertResponseIsSuccessful();
        $this->assertResponseStatusCodeSame(Response::HTTP_OK);
    }

    public function testCategoryPage()
    {
        $client = static::createClient();
        $client->request('GET', '/essai');

        $this->assertResponseIsSuccessful();
        $this->assertResponseStatusCodeSame(Response::HTTP_OK);
    }

    public function testPostPage()
    {
        $client = static::createClient();
        $client->request('GET', '/essai/Essai-comparatif-Kawasaki-ZX-4RR-ZX-6R');

        $this->assertResponseIsSuccessful();
        $this->assertResponseStatusCodeSame(Response::HTTP_OK);
    }
}
