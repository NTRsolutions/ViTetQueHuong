<div id="contentWrapper">
    <div class="pageContent">
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="box success-box center hidden">Your item was added succesfully.</div>
                    <div class="clearfix"></div>							
                    <div class="col-md-9">
                        <div class="toolsBar">
                            <div class="right col-md-2 list-grid">
                                <a class="list-btn shape sm" href="#" data-title="List view" data-tooltip="true"><i class="fa fa-list"></i></a>
                                <a class="grid-btn shape sm selected" href="#" data-title="Grid view" data-tooltip="true"><i class="fa fa-th"></i></a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="grid-list">
                            <?php foreach ($product_data as $row2) { ?>
                                <div class="col-md-4 shop-item">
                                    <div class="item-box shape shape">
                                        <div class="item-img">
                                            <a href="<?php echo $this->crud_model->product_link($row2['product_id']); ?>">
                                                <img style="height: 200px;width: 240px;" src="<?php echo $this->crud_model->file_view('product', $row2['product_id'], '', '', 'thumb', 'src', 'multi', 'one'); ?>" alt="" />
                                            </a>
                                            <div class="product-buttons">
                                                <!--<a class="shape" href="#" data-title="Add to Wishlist" data-tooltip="true"><i class="fa fa-heart"></i></a>-->
                                                <a class="shape" href="<?php echo $this->crud_model->product_link($row2['product_id'],$row2['category']); ?>" data-title="Quick view"  >Xem chi tiết</a>
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
                        <div class="clearfix"></div>
                        <div class="pagination">
                            <ul>
                                <li class="shape"><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                                <li class="shape selected"><a href="#">1</a></li>
                                <li class="shape"><a href="#">2</a></li>
                                <li class="shape"><a href="#">3</a></li>
                                <li class="shape"><a href="#">4</a></li>
                                <li class="shape"><a href="#">5</a></li>
                                <li class="shape"><a href="#">6</a></li>
                                <li class="shape"><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <aside class="col-md-3">
                        <ul class="sidebar_widgets">
                            <li class="widget widget-categories shape">
                                <h4 class="widget-head main-color">Danh mục sản phẩm</h4>
                                <div class="widget-content">
                                    <ul>
                                        <?php
                                        $categories = $this->crud_model->Show_all_category();

                                        foreach ($categories as $row3):
                                            ?>
                                            <li><a href="<?php echo $this->crud_model->category_link($row3->category_id); ?>"><?php echo $row3->category_name ?></a><span>[<?php echo $this->db->get_where('product', array('category' => $row3->category_id, 'status' => 'ok'))->num_rows(); ?>]</span></li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div>
                            </li>
                            <li class="widget search-filter shape">
                                <h4 class="widget-head"><span class="main-color">Tìm kiếm </span>sản phẩm</h4>
                                <div class="widget-content">
                                    <div class="margin-bottom-15">
                                        <div class="control-group">
                                            <div class="col-md-6">
                                                <label class="control-label">Sản phẩm:</label>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" placeholder="Title Name" name="title" class="form-control shape new-angle">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="col-md-6">
                                                <label class="control-label">Giá từ:</label>
                                                <div class="controls">
                                                    <select class="dropdown">
                                                        <option selected="selected">Chọn giá</option>
                                                        <option>10,000</option>
                                                        <option>20,000</option>
                                                        <option>50,000</option>
                                                        <option>100,000</option>
                                                    </select> </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label class="control-label">Giá đến:</label>
                                                <div class="controls">
                                                    <select class="dropdown">
                                                        <option selected="selected">Chọn giá</option>
                                                        <option>10,000</option>
                                                        <option>20,000</option>
                                                        <option>50,000</option>
                                                        <option>100,000</option>
                                                    </select> </div>
                                            </div>
                                        </div>
                                        <input type="submit" class="btn btn-medium main-bg shape col-md-12" value="Search"/>
                                    </div>
                            </li>
                        </ul>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</div>
