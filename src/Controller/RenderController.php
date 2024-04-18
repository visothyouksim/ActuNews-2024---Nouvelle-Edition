<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Post;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

class RenderController extends AbstractController
{

    public function __construct(private EntityManagerInterface $manager)
    {

    }

//    public function getCategoryPostCounts(): array
//    {
//        $queryBuilder = $this->manager->createQueryBuilder();
//        $queryBuilder->select('c.name, COUNT(p) as postCount')
//            ->from(Category::class, 'c')
//            ->leftJoin('c.posts', 'p')
//            ->groupBy('c.name');
//
//        $results = $queryBuilder->getQuery()->getResult();
//        $categoryPostCounts = [];
//        foreach ($results as $result) {
//            $categoryPostCounts[$result['name']] = $result['postCount'];
//        }
//
//        return $categoryPostCounts;
//    }

public function renderSidebar(): Response
{
    $posts = $this->manager->getRepository(Post::class)->findBy([], ['publishedAt' => 'DESC'], 3);

    $categories = $this->manager->getRepository(Category::class)->findAll();

//    $categoryPostCounts = $this->getCategoryPostCounts();

    return $this->render('components/_sidebar.html.twig', [
        'posts' => $posts,
        'categories' => $categories,
//        'categoryPostCounts' => $categoryPostCounts
    ]);
}

    /**
     * Permet de déclencher le rendu de la navbar
     */
    public function renderNavigation(): Response
    {
        # Récupération des catégories de la BDD
        $categories = $this->manager->getRepository(Category::class)->findAll();

        # Rendu de la vue
        return $this->render('components/_nav.html.twig', [
            'categories' => $categories
        ]);
    }
}
