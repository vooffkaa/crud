<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('first_name', TextType::class, [
                'attr' => [
                    'placeholder' => 'Required field',
                    'class' => 'form-control',
                ]
            ])
            ->add('last_name', TextType::class, [
                'attr' => [
                    'placeholder' => 'Required field',
                    'class' => 'form-control',
                ]
            ])
            ->add('email', TextType::class, [
                'attr' => [
                    'placeholder' => 'Required field',
                    'class' => 'form-control',
                ]
            ])
            ->add('company_name', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ]
            ])
            ->add('position', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ]
            ])
            ->add('phone_1', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ]
            ])
            ->add('phone_2', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ]
            ])
            ->add('phone_3', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                ]
            ])
            ->add('save', SubmitType::class, [
                'attr' => [
                    'class' => 'btn btn-primary',
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
