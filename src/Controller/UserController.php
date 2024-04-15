<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Attribute\Route;

class UserController extends AbstractController
{
    #[Route('/inscription.html', name: 'user_register', methods: ['GET', 'POST'], priority: 10)]
    public function register(Request                    $request,
                             UserPasswordHasherInterface $userPasswordHasher,
                             EntityManagerInterface     $entityManager): \Symfony\Component\HttpFoundation\Response
    {
        $user = new User();
        $user->setRoles(['ROLE_USER']);

        # Création de mon formulaire
        $form = $this->createForm(UserType::class, $user);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // encode the plain password
            $user->setPassword(
                $userPasswordHasher->hashPassword(
                    $user,
                    $form->get('password')->getData()
                )
            );

            $this->addFlash('success', 'Votre inscription à été effectuée ! Bienvenue parmi nous !');

            $entityManager->persist($user);
            $entityManager->flush();
        }

        # Passage de mon formulaire à la vue
        return $this->render('user/register.html.twig', [
            'form' => $form
        ]);
    }
}