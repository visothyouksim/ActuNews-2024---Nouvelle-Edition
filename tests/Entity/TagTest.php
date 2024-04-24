<?php

namespace App\Tests\Entity;

use App\Entity\Tag;
use PHPUnit\Framework\TestCase;

class TagTest extends TestCase
{
    public function testCreateTag(): void
    {
        $tag = new Tag();
        $this->assertInstanceOf(Tag::class, $tag);
    }

    public function testSetAndGetName(): void
    {
        $tag = new Tag();
        $tag->setName('Test Tag');
        $this->assertEquals('Test Tag', $tag->getName());
    }

    public function testSetAndGetSlug(): void
    {
        $tag = new Tag();
        $tag->setSlug('test-tag');
        $this->assertEquals('test-tag', $tag->getSlug());
    }

    // public function testAddAndRemovePost(): void
    // {
    //     $tag = new Tag();
    //     $post = new Post(); // Assurez-vous d'avoir une classe Post valide
    //     $tag->addPost($post);
    //     $this->assertTrue($tag->getPosts()->contains($post));

    //     $tag->removePost($post);
    //     $this->assertFalse($tag->getPosts()->contains($post));
    // }
}