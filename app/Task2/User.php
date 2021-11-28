<?php

//● id — id пользователя;
//● name — имя пользователя;
//● age — возраст пользователя;
//● email — email пользователя.
require_once 'User.php';
require_once 'UserFormValidator.php';
class User
{
    private int $id;
    private string $name;
    private int $age;
    private string $email;

    public function __construct($id, $name, $age, $email)
    {
        $this->id = $id;
        $this->name = $name;
        $this->age = $age;
        $this->email = $email;
    }

    public function load(int $id) {
       $rnd = random_int(0, 1);
        if($rnd=0) {
            throw new Error('Пользователь не найден в базе данных');
        }
    }

    public function save(array $data): bool {
        $rnd = random_int(0, 1);
        if($rnd==0){
            return false;
        }
        else {
            return true;
        }
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getAge(): int
    {
        return $this->age;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

}