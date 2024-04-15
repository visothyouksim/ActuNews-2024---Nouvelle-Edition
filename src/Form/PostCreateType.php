<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Post;
use App\Entity\User;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class PostCreateType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('title', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Saisissez le titre de votre article'
                ],
                'label' => false
            ])
            ->add('image', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Saisissez l\'URL de votre image'
                ],
                'label' => false
            ])
            ->add('content', TextareaType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'placeholder' => 'Saisissez le contenu de votre article'
                ],
                'label' => false
            ])
            ->add('createdAt', null, [
                'widget' => 'single_text',
                'label' => 'Date de création'
            ])
            ->add('updatedAt', null, [
                'widget' => 'single_text',
                'label' => 'Date de mise à jour'
            ])
            ->add('categories', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'name',
                'multiple' => true,
                'label' => 'Catégorie(s)'
            ])
            ->add('user', EntityType::class, [
                'class' => User::class,
                'choice_label' => 'firstName',
                'label' => 'Nom du rédacteur'
            ])
            ->add('submit', SubmitType::class, [
                'label' => 'Enregistrer l\'article !'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Post::class,
        ]);
    }
}
