<?php

declare(strict_types=1);

namespace App\Controller;

use App\Entity\Post;
use App\Form\PostCreateType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

class PostController extends AbstractController
{
    #[Route('/creer-un-article.html', name: 'post_create', methods: ['GET', 'POST'], priority: 10)]
    public function createPost(Request $request, EntityManagerInterface $entityManager, SluggerInterface $slugger): Response
    {
        $post = new Post();

        $form = $this->createForm(PostCreateType::class, $post);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $slug = $slugger->slug($post->getTitle());
            // Convertir l'objet UnicodeString en chaîne de caractères
            $post->setSlug($slug->toString());

            $entityManager->persist($post);
            $entityManager->flush();

            $this->addFlash('success', 'Votre article a bien été enregistré !');
            return $this->redirectToRoute('default_home');
        }

        return $this->render('form/postCreate.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
