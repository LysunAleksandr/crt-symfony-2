<?php

require_once 'Basket.php';
require_once 'Order.php';
require_once 'BasketPosition.php';
require_once 'Product.php';
$basket = new Basket();
$basket->addProduct(new Product('Sprite', 100), 2);
$basket->addProduct(new Product('Coca-Cola', 80), 1);
$basket->addProduct(new Product('Kvas', 40), 1);
$basket->addProduct(new Product('Fanta', 120), 2);
$order = new Order($basket);

echo "\n<br/>Заказ на сумму: ".$order->getPrice()." Состав: ";
$basket->describe();