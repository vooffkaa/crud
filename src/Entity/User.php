<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\UserRepository")
 */
class User
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $first_name;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $last_name;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $company_name;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $position;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $phone_1;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $phone_2;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $phone_3;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirstName(): ?string
    {
        return $this->first_name;
    }

    public function setFirstName(string $first_name): self
    {
        $this->first_name = $first_name;

        return $this;
    }

    public function getLastName(): ?string
    {
        return $this->last_name;
    }

    public function setLastName(string $last_name): self
    {
        $this->last_name = $last_name;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getCompanyName(): ?string
    {
        return $this->company_name;
    }

    public function setCompanyName(?string $company_name): self
    {
        $this->company_name = $company_name;

        return $this;
    }

    public function getPosition(): ?string
    {
        return $this->position;
    }

    public function setPosition(?string $position): self
    {
        $this->position = $position;

        return $this;
    }

    public function getPhone1(): ?string
    {
        return $this->phone_1;
    }

    public function setPhone1(?string $phone_1): self
    {
        $this->phone_1 = $phone_1;

        return $this;
    }

    public function getPhone2(): ?string
    {
        return $this->phone_2;
    }

    public function setPhone2(?string $phone_2): self
    {
        $this->phone_2 = $phone_2;

        return $this;
    }

    public function getPhone3(): ?string
    {
        return $this->phone_3;
    }

    public function setPhone3(?string $phone_3): self
    {
        $this->phone_3 = $phone_3;

        return $this;
    }
}
