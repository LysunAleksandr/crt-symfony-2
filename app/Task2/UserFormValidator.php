<?php

//Правила валидации
//● Имя должно быть не пустым.
//● Возраст должен быть не менее 18 лет.
//● Email должен быть заполнен и соответствовать формату email.
require_once 'User.php';
require_once 'UserFormValidator.php';
class UserFormValidator
{
    public function validate(array $data)
    {
        $error = "";
            foreach ($data as $element) {
                if (strlen($element->getName()) == 0) {
                    $error .= "Имя не заполнено<br/>";
                };
                if ($element->getAge() < 18) {
                    $error .= "Возраст менее 18 лет не допускается<br/>";

                };
                if (!filter_var($element->getEmail(), FILTER_VALIDATE_EMAIL)) {
                    $error .= "Email не соответсвует формату<br/>";
                }
            }
            if($error!=""){
                throw new Error($error);
            }
    }
}