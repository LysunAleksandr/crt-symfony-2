<?php

require_once 'Basket.php';
require_once 'Order.php';
require_once 'BasketPosition.php';
require_once 'Product.php';
class Product
{
    private string $name;
    private float $price;

    public function __construct(string $name, float $price)
    {
        $this->name=$name;
        $this->price=$price;
    }

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @return float
     */
    public function getPrice(): float
    {
        return $this->price;
    }

}