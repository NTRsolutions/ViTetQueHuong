<li>

    <?php if (count($carted) > 0) { ?>
        <ul id="scrollbar" class="list-unstyled badge-open contentHolder">
            <?php
            $tax = 0;
            $shipping = 0;
            $grand = 0;
            foreach ($carted as $items) {
                ?>
                <li>
                    <a class="cart-mini-lft" href="product-left-bar.html"><img style="width: 50px; height: 50px;" src="<?php echo $items['image']; ?>" alt=""></a>
                    <div class="cart-body">
                        <a href="#"><?php echo $items['name']; ?></a>
                        <div class="price"><?php echo $this->cart->format_number($items['qty']); ?> x <?php echo currency() . $this->cart->format_number($items['price']); ?></div>
                    </div>
                    <a class="close" href="#"><i class="fa fa-times" title="Remove"></i></a>
                </li>
    <?php } ?>
            <li class="subtotal" id="subtotal">
                <div class="overflow-h margin-bottom-10">
                    <div>
                        <span><?php echo translate('total'); ?></span>
                        <span class="pull-right subtotal-cost" id="scroll_total"></span>
                        <br>
                        <span><?php echo translate('tax'); ?></span>
                        <span class="pull-right subtotal-cost" id="scroll_tax"></span>
                        <br>
                        <span><?php echo translate('shipping'); ?></span>
                        <span class="pull-right subtotal-cost" id="scroll_ship"></span>
                        <br>
                        <span ><?php echo translate('grand_total'); ?></span>
                        <span class="pull-right subtotal-cost" id="scroll_grand"></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="btn-u btn-u-light-violet-shop btn-block" id="empty">
    <?php echo translate('empty_cart'); ?>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <a href="<?php echo base_url(); ?>index.php/home/cart_checkout" class="btn-u btn-u-light-violet-shop btn-block"><?php echo translate('checkout'); ?></a>
                    </div>
                </div>
            </li>
        </ul>
<?php } ?>
</li>
<script>
    var add_to_cart = '<?php echo translate('add_to_cart'); ?>';
    var cart_emptied = '<?php echo translate('cart_emptied'); ?>';
    var base_url = '<?php echo base_url(); ?>';
</script>
<script src="<?php echo base_url(); ?>template/front/assets/js/custom/added_list.js"></script>