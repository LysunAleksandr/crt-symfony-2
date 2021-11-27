<?php

require_once 'Basket.php';
require_once 'Order.php';
require_once 'BasketPosition.php';
require_once 'Product.php';
class Order
{
    private Basket $basket;
    private $priceDelivery;

    public function __construct(Basket $basket)
    {
        $this->basket=$basket;
        $this->priceDelivery = 100; //фиксированая цена доставки
    }

    public function getBasket(){
        return $this->basket;
    }

    public function getPrice(){
        return $this->basket->getPrice();
    }
}