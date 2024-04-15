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

        if ($form->isSubmitted()) {
            # Hashage du mot de passe
            $user->setPassword(
                $userPasswordHasher->hashPassword(
                    $user,
                    $user->getPassword()
                )
            );

            # Sauvegarder / Envoyer dans la base de données
            $entityManager->persist($user);
            $entityManager->flush();

            # Notification et redirection
            $this->addFlash('success', 'Votre inscription à été effectuée ! Vous pouvez désormais vous connecter !');
            return $this->redirectToRoute('app_login');
        }

        # Passage de mon formulaire à la vue
        return $this->render('user/register.html.twig', [
            'form' => $form
        ]);
    }
}