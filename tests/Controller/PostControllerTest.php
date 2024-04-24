<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;

class PostControllerTest extends WebTestCase
{
    public function testCreatePost()
    {
        $client = static::createClient();

        // Simuler une requête POST pour créer un nouvel article
        $crawler = $client->request('POST', '/administration/article/creer-un-article.html', [
            'post' => [
                'title' => 'Test Article Title',
                'content' => 'Test Article Content',
                // Ajoutez ici d'autres champs du formulaire si nécessaire
            ],
        ]);

        // Vérifier que la réponse est une redirection (code de statut 302)
        $this->assertEquals(Response::HTTP_FOUND, $client->getResponse()->getStatusCode());

        // Vous pouvez ajouter plus de vérifications ici, par exemple vérifier que l'article a été créé dans la base de données
    }
}