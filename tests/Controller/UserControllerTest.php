<?php

namespace App\Tests\Controller;

use App\Controller\UserController;
use Doctrine\ORM\EntityManagerInterface;
use PHPUnit\Framework\TestCase;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Form\FormInterface;

class UserControllerTest extends TestCase
{
    public function testRegister()
    {
        // Créer des mocks pour les dépendances
        $requestMock = $this->createMock(Request::class);
        $entityManagerMock = $this->createMock(EntityManagerInterface::class);
        $passwordHasherMock = $this->createMock(UserPasswordHasherInterface::class);
        $formMock = $this->createMock(FormInterface::class);

        // Configurer le comportement des mocks
        $requestMock->method('isMethod')->willReturn(true);
        $formMock->method('handleRequest')->willReturnSelf();
        $formMock->method('isSubmitted')->willReturn(true);
        $formMock->method('isValid')->willReturn(true);
        $passwordHasherMock->method('hashPassword')->willReturn('hashedPassword');
        $entityManagerMock->expects($this->once())->method('persist');
        $entityManagerMock->expects($this->once())->method('flush');

        // Créer une instance de UserController avec les mocks
        $userController = new UserController();

        // Appeler la méthode à tester
        $response = $userController->register($requestMock, $entityManagerMock, $passwordHasherMock);

        // Vérifier que la réponse est une redirection
        $this->assertInstanceOf(Response::class, $response);
        $this->assertEquals(302, $response->getStatusCode());
    }
}