<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityControllerTest extends WebTestCase
{
    public function testLogin(): void
    {
        // Créer un mock pour AuthenticationUtils
        $authenticationUtilsMock = $this->createMock(AuthenticationUtils::class);

        // Configurer le mock pour retourner des valeurs spécifiques
        $authenticationUtilsMock->method('getLastAuthenticationError')
            ->willReturn(null); // Simuler qu'il n'y a pas d'erreur d'authentification
        $authenticationUtilsMock->method('getLastUsername')
            ->willReturn('testuser'); // Simuler que le dernier nom d'utilisateur entré était 'testuser'

        // Créer un client de test
        $client = static::createClient();

        // Injecter le mock dans le contrôleur
        $container = $client->getContainer();
        $container->set('App\Controller\SecurityController', $authenticationUtilsMock);

        // Simuler une requête GET vers la route de connexion
        $client->request('GET', '/connexion.html');

        // Vérifier que la réponse est 200 OK
        $this->assertResponseIsSuccessful();

        // Vérifier que la réponse est bien une page HTML
        $this->assertResponseHeaderSame('Content-Type', 'text/html; charset=UTF-8');

        // Vous pouvez également vérifier le contenu de la réponse si nécessaire
        // Par exemple, vérifier que le formulaire de connexion est présent
        $this->assertSelectorTextContains('h1', 'Connexion');
    }
}