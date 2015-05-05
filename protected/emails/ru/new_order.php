<html>
<body>

  <p>Здравствуйте, <?=$order->user_name?>.</p>
  <p>Ваш заказ принят.</p>

  <p>
    <ul>
    <?php foreach ($order->products as $product)
        echo '<li>'.$product->getRenderFullName()."</li>";
    ?>
    </ul>
    
    <p>
      <b>Всего к оплате:</b>
      <?=StoreProduct::formatPrice($order->total_price + $order->delivery_price)?> <?=Yii::app()->currency->main->symbol?>
    </p>

    <p>
      <b>Контактные данные:</b><br/>
      <?= implode('<br/>', array($order->user_name, $order->user_phone)) ?> 
    </p>

  </p>
</body>
</html>