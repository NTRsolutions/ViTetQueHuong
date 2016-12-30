<?php
foreach ($product_data as $row) {
    ?>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="box success-box center hidden">Your item was added succesfully.</div>
                <div class="clearfix"></div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="product-img shape">
                                <div class="product-zoom">   
                                    <?php
                                    $thumbs = $this->crud_model->file_view('product', $row['product_id'], '', '', 'thumb', 'src', 'multi', 'all');
//                                    
                                    $mains = $this->crud_model->file_view('product', $row['product_id'], '', '', 'no', 'src', 'multi', 'all');

                                    foreach ($mains as $key => $row1) {
//                                     
                                        ?>
                                        <div>
                                            <a class="zoom" href="<?php echo $thumbs[$key]; ?>"><img alt="" src="<?php echo $row1; ?>" /></a>
                                        </div>
                                        <?php
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="product-specs price-block list-item">
                                <div class="price-box"><span class="product-price"><?= $row['title'] ?></span></div>
                                <div ><span>Giá:</span><span style="font-size: 24px;color: #BF3404;padding-left: 20px;"><?= $row['sale_price'] ?></span><span>đồng</span></div>
                            </div>
                            <div class="product-block item-avl list-item">
                                <div class="success-box f-left"><i class="fa fa-check"></i></div> <span><b>33</b> Items in Stock</span>
                            </div>
                            <?php
                            echo form_open('', array(
                                'method' => 'post',
                                'class' => 'sky-form',
                            ));
                            ?>
                            <div class="list-item product-block item-add">
                                <?php
                                if (!$this->crud_model->is_digital($row['product_id'])) {
                                    ?>
                                    <span class="product-quantity sm-margin-bottom-20">
                                        <button type='button' class="quantity-button" name='subtract' onclick='javascript: document.getElementById("qty").value--;' value='-'>-</button>
                                        <input type='text' class="quantity-field cart_quantity" name='qty' value="<?php
                                        if ($a = $this->crud_model->is_added_to_cart($row['product_id'], 'qty')) {
                                            echo $a;
                                        } else {
                                            echo '1';
                                        }
                                        ?>" id='qty'/>
                                        <button type='button' class="quantity-button" name='add' onclick='javascript: document.getElementById("qty").value++;' value='+'>+</button>
                                    </span>

                                    <?php
                                } else {
                                    ?>
                                    <input type='hidden' class="quantity-field cart_quantity" name='qty' value="1" id='qty'/>
                                    <?php
                                }
                                ?>
                                <button type="button" class="btn btn-lg add-cart main-bg btn-u btn-brd btn-brd-hover rounded btn-u-vio btn-u-xs add_to_cart btn_cart" data-type="text"  data-pid='<?php echo $row['product_id']; ?>'>
                                    <i class="fa fa-shopping-cart"></i>
                                    <?php if ($this->crud_model->is_added_to_cart($row['product_id'])) { ?>
                                        <?php echo translate('added_to_cart'); ?>
                                    <?php } else { ?>
                                        <?php echo translate('add_to_cart'); ?>
                                    <?php } ?>
                                </button>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>

                <div class="clearfix"></div>
                <div class="padding-vertical-30">
                    <div class="divider centered"><i class="fa fa-sun-o"></i></div>
                </div>

                <div class="col-md-12">
                    <div class="row">
                        <div class="tabs-style-bottomline">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#u-1"><span><i class="fa fa-align-justify"></i>Description</span></a></li>
                                <li role="presentation"><a href="#u-3"><span><i class="fa fa-star"></i>Comment</span></a></li>
                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="u-1">
                                    <?= $row['description'] ?>

                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="u-3">
                                        <div class="fb-comments" data-href="https://www.facebook.com/V%E1%BB%8B-T%E1%BA%BFt-Qu%C3%AA-H%C6%B0%C6%A1ng-375070639512634/" data-numposts="4"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="heading">
                    <h3 class="uppercase head-5 bold"><span class="main-color">Related </span>Products</h3>
                </div>
                <div class="row" >
                    <?php foreach ($product_relate as $row2) { ?>
                        <div class="col-md-4 shop-item" style="height: 250px;width: 240px;">
                            <div class="item-box shape shape" >
                                <div class="item-img">
                                    <a href="<?php echo $this->crud_model->product_link($row2['product_id']); ?>">
                                        <img style="height: 200px;width: 240px;" src="<?php echo $this->crud_model->file_view('product', $row2['product_id'], '', '', 'thumb', 'src', 'multi', 'one'); ?>" alt="" />
                                    </a>
                                    <div class="product-buttons">
                                        <!--<a class="shape" href="#" data-title="Add to Wishlist" data-tooltip="true"><i class="fa fa-heart"></i></a>-->
                                        <a class="shape" href="<?php echo $this->crud_model->product_link($row2['product_id'], $row2['category']); ?>" data-title="Quick view"  >Xem chi tiết</a>
                                    </div>
                                </div>
                                <h3 class="item-title"><?php echo $row2['title']; ?></h3>
                                <div class="item-details">
                                    <p><?php echo $row2['description']; ?></p>
                                    <div class="item-price"><?php if ($this->crud_model->get_type_name_by_id('product', $row2['product_id'], 'discount') > 0) { ?>
                                            <span>
                                                <?php echo currency() . $this->crud_model->get_product_price($row2['product_id']); ?>
                                            </span>
                                            <span style=" text-decoration: line-through;color:#c9253c;">
                                                <?php echo currency() . $row2['product_id']; ?>
                                            </span>
                                        <?php } else { ?>
                                            <span>
                                                <?php echo currency() . $row2['product_id']; ?>
                                            </span>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                </div>

            </div>


        </div>
    </div>
    </div>

    <?php
}
?>