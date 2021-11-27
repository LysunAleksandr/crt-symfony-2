<?php

require_once 'Basket.php';
require_once 'Order.php';
require_once 'BasketPosition.php';
require_once 'Product.php';
class Basket
{
    private array $products;

    public function __construct()
    {
        $this->products = [];
    }

    public function addProduct(Product $product, $quantity) {
        array_push($this->products, new BasketPosition($product, $quantity));
    }

    public function getPrice() {
        $price = 0;
        foreach ($this->products as $element){
            $price+=$element->getPrice();
        }
        return $price;
    }

    public function describe() {
        echo "\n<br/>Товар - Цена - Количество";
        foreach ($this->products as $element){
            echo "<br/>        ".$element->getProduct()."  -  ".$element->getPrice()."  -  ".$element->getQuantity()." ";
        }
    }

}