<?php

namespace App\Tests\Entity;

use App\Entity\User;
use PHPUnit\Framework\TestCase;

class UserTest extends TestCase
{
    public function testCreateUser()
    {
        $user = new User();
        $this->assertInstanceOf(User::class, $user);
    }

    public function testSetAndGetEmail()
    {
        $user = new User();
        $email = 'test@example.com';
        $user->setEmail($email);
        $this->assertEquals($email, $user->getEmail());
    }

    public function testSetAndGetFirstName()
    {
        $user = new User();
        $firstName = 'John';
        $user->setFirstName($firstName);
        $this->assertEquals($firstName, $user->getFirstName());
    }

    public function testSetAndGetFamilyName()
    {
        $user = new User();
        $familyName = 'Doe';
        $user->setFamilyName($familyName);
        $this->assertEquals($familyName, $user->getFamilyName());
    }

    // public function testAddAndRemovePost()
    // {
    //     $user = new User();
    //     $post = new Post(); // Assurez-vous d'avoir une classe Post valide dans votre projet
    //     $user->addPost($post);
    //     $this->assertTrue($user->getPosts()->contains($post));

    //     $user->removePost($post);
    //     $this->assertFalse($user->getPosts()->contains($post));
    // }
}