<?php

namespace App\Tests\Entity;

use App\Entity\Category;
use App\Entity\Post;
use PHPUnit\Framework\TestCase;

class CategoryTest extends TestCase
{
    public function testGettersAndSetters()
    {
        $category = new Category();

        // Test setters
        $category->setName('Test Category');
        $category->setSlug('test-category');

        // Test getters
        $this->assertEquals('Test Category', $category->getName());
        $this->assertEquals('test-category', $category->getSlug());
    }

    public function testAddAndRemovePost()
    {
        $category = new Category();
        $post = new Post();

        // Test addPost
        $category->addPost($post);
        $this->assertCount(1, $category->getPosts());

        // Test removePost
        $category->removePost($post);
        $this->assertCount(0, $category->getPosts());
    }
}