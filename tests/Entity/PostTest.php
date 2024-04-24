<?php

namespace App\Tests\Entity;

use App\Entity\Post;
use PHPUnit\Framework\TestCase;

class PostTest extends TestCase
{
    public function testSetAndGetTitle()
    {
        $post = new Post();
        $title = 'Test Title';
        $post->setTitle($title);

        $this->assertEquals($title, $post->getTitle());
    }

    public function testSetAndGetSlug()
    {
        $post = new Post();
        $slug = 'test-slug';
        $post->setSlug($slug);

        $this->assertEquals($slug, $post->getSlug());
    }

    public function testSetAndGetImage()
    {
        $post = new Post();
        $image = 'test-image.jpg';
        $post->setImage($image);

        $this->assertEquals($image, $post->getImage());
    }

    public function testSetAndGetContent()
    {
        $post = new Post();
        $content = 'Test Content';
        $post->setContent($content);

        $this->assertEquals($content, $post->getContent());
    }

    public function testSetAndGetPublishedAt()
    {
        $post = new Post();
        $publishedAt = new \DateTimeImmutable();
        $post->setPublishedAt($publishedAt);

        $this->assertEquals($publishedAt, $post->getPublishedAt());
    }
}