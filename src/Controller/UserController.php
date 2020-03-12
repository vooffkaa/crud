<?php

namespace App\Controller;

use App\Form\UserType;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;

class UserController extends AbstractController
{
    /**
     * @var EntityManagerInterface
     */
    private $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    /**
     * @param Request $request
     * @param PaginatorInterface $paginator
     * @return Response
     */
    public function readUser(Request $request, PaginatorInterface $paginator)
    {
        $users = $this->entityManager->getRepository(User::class);

        $allUsersQuery = $users->createQueryBuilder('p')->where("p.first_name IS NOT NULL")->getQuery();
        $users = $paginator->paginate(
            $allUsersQuery,
            $request->query->getInt('page', 1),
            10
        );

        //Render
        return $this->render('show.html.twig', [
            'users' => $users,
            'title' => 'Users list',
        ]);
    }

    /**
     * @param $id
     * @param Request $request
     * @return RedirectResponse|Response
     */
    public function updateUser($id, Request $request)
    {
        $user = $this->entityManager->getRepository(User::class)->find($id);

        $form = $this->createForm(UserType::class, $user, [
            'action' => $this->generateUrl('update_user',[
                'id' => $id
            ])
        ]);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $this->entityManager->persist($user);
            $this->entityManager->flush();
            return $this->redirectToRoute('read_user');
        }
        return $this->render('testupdate.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @param $id
     * @return bool|RedirectResponse
     */
    public function deleteUser($id)
    {
        $user = $this->entityManager->getRepository(User::class)->find($id);
        if (!$user) {
            return false;
        }
        $this->entityManager->remove($user);
        $this->entityManager->flush();

        return $this->redirectToRoute('read_user');
    }

    /**
     * @param Request $request
     * @return RedirectResponse|Response
     */
    public function testAdd(Request $request)
    {
        $user = new User();

        $form = $this->createForm(UserType::class, $user, [
            'action' => $this->generateUrl('add_user')
        ]);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $this->entityManager->persist($user);
            $this->entityManager->flush();
            return $this->redirectToRoute('read_user');
        }
        return $this->render('testadd.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
