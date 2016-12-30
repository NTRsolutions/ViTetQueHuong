<?php
if ($this->session->userdata('user_login') == "yes") {
    $user_info = $this->db->get_where('user', array(
                'user_id' => $this->session->userdata('user_id')
            ))->result_array();

//    pre($user_info);
}
?>
<body>

    <div class="pageWrapper animsition" style="z-index: 100;">
        <!-- top bar start -->
        <div class="top-bar main-bg">
            <div class="container">

                <div class="center-tbl">

                    <ul class="top-info">
                        <li><a href="#" class="shape"><i class="fa fa-envelope"></i>info@mangphanphoi.vn</a></li>
                        <li><span><i class="fa fa-phone"></i> +84 901.211.045</span></li>
                    </ul>

                    <ul class="social-list middle-ul alter-bg shape">                            
                        <li><a href="https://www.facebook.com/mangphanphoi.vn" class="fa fa-facebook" data-tooltip="true" data-title="facebook" data-position="bottom"></a></li>                          
                    </ul>

                    <ul class="list-inline right-topbar pull-right" id="loginsets">
                    </ul>
                    <ul>
                        <?php
                        if ($this->session->userdata('user_login') != "yes") {
                            ?>
                            <li class="dropdown">
                                <a href="<?php echo base_url(); ?>index.php/home/login" class="shape" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="login-bx"><i class="fa fa-lock"></i>Đăng nhập</a>
                                <div class="dropdown-menu black-bg">
                                    <div class='login_html'>
                                        <?php
                                        echo form_open(base_url() . 'index.php/home/login/do_login/', array(
                                            'class' => 'log-reg-v3 sky-form',
                                            'method' => 'post',
                                            'style' => 'padding:0px 10px !important;',
                                            'id' => 'login_form'
                                        ));
                                        $fb_login_set = $this->crud_model->get_type_name_by_id('general_settings', '51', 'value');
                                        $g_login_set = $this->crud_model->get_type_name_by_id('general_settings', '52', 'value');
                                        ?>
                                        <div class="reg-block-header">
                                            <h2><?php echo translate('sign_in'); ?></h2>
                                            <p style="font-weight:300 !important; width: 300px;"><?php echo translate('do_not_have_account_?_click_'); ?><span class="color-purple" style="cursor:pointer" data-dismiss="modal" onclick="register()" ><?php echo translate('sign_up'); ?></span> <?php echo translate('to_registration_.'); ?></p> 
                                        </div>
                                        <section>
                                            <label class="input login-input">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                    <input type="email" placeholder="<?php echo translate('email_address'); ?>" name="email" class="form-control">
                                                </div>
                                            </label>
                                        </section>
                                        <section>
                                            <label class="input login-input no-border-top">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                                    <input type="password" placeholder="<?php echo translate('password'); ?>" name="password" class="form-control">
                                                </div>    
                                            </label>
                                        </section>
                                        <div class="row margin-bottom-5">
                                            <div class="col-xs-8">
                                                <span style="cursor:pointer;" onClick="set_html('login_html', 'forget_html')">
                                                    <?php echo translate('forget_your_password_?'); ?>
                                                </span>
                                            </div>
                                            <div class="col-xs-4 text-right">
                                                <input type="submit" value="login">
                                            </div>
                                        </div>

                                        <?php if ($fb_login_set == 'ok' || $g_login_set == 'ok') { ?>
                                            <div class="border-wings">
                                                <span>or</span>
                                            </div>

                                            <div class="row columns-space-removes">
                                                <?php if ($fb_login_set == 'ok') { ?>
                                                    <div class="col-lg-6 <?php if ($g_login_set !== 'ok') { ?>mr_log<?php } ?> margin-bottom-10">
                                                        <?php if (@$user): ?>
                                                            <a href="<?= $url ?>" >
                                                                <div class="fb-icon-bg"></div>
                                                                <div class="fb-bg"></div>
                                                            </a>
                                                        <?php else: ?>
                                                            <a href="<?= $url ?>" >
                                                                <div class="fb-icon-bg"></div>
                                                                <div class="fb-bg"></div>
                                                            </a>
                                                        <?php endif; ?>
                                                    </div>
                                                <?php } if ($g_login_set == 'ok') { ?>     
                                                    <div class="col-lg-6 <?php if ($fb_login_set !== 'ok') { ?>mr_log<?php } ?>">
                                                        <?php if (@$g_user): ?>
                                                            <a href="<?= $g_url ?>" >
                                                                <div class="g-icon-bg"></div>
                                                                <div class="g-bg"></div>
                                                            </a>							
                                                        <?php else: ?>
                                                            <a href="<?= $g_url ?>">
                                                                <div class="g-icon-bg"></div>
                                                                <div class="g-bg"></div>
                                                            </a>
                                                        <?php endif; ?>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        <?php } ?>
                                        </form> 
                                    </div>
                                </div>
                            </li>
                            <li><a href="<?php echo base_url(); ?>index.php/home/dangki" class="shape" ><i class="fa fa-user"></i> Đăng ký</a></li>                            
                        <?php } else {
                            ?><li><a href="<?php echo base_url(); ?>index.php/home/profile" class="shape" ><i class="fa fa-user"></i> <?= $user_info[0]['username'] ?></a></li>
                            <li><a href="<?php echo base_url(); ?>index.php/home/logout_user" class="shape" ><i class="fa fa-user"></i> Logout</a></li>
                        <?php }
                        ?>
                    </ul>

                </div>

            </div>
        </div>
        <!-- top bar end -->

        <header class="top-head " data-sticky="true">
            <div class="container">
                <!-- Logo start -->
                <div class="logo" style="width: 20%">
                    <a href="index.html"><img alt="" src="<?php echo base_url(); ?>template/front-root/assets/images/logo.png" /></a>
                </div>
                <!-- Logo end -->

                <div class="f-right responsive-nav">
                    <!-- top navigation menu start -->
                    <nav class="top-nav nav-animate to-bottom">
                        <ul>
                            <li class="mega-menu"><a href="<?php echo base_url(); ?>index.php/home">Trang chủ</a></li>
                            <li class="selected"><a href="<?php echo base_url(); ?>index.php/home/gioithieu">Giới thiệu</a></li>
                            <li class="selected"><a href="#">SẢN PHẨM</a>
                                <ul>
                                    <?php
                                    $categories = $this->crud_model->Show_all_category();
                                    foreach ($categories as $row3) {
                                        ?>
                                        <li ><a href="<?php echo $this->crud_model->category_link($row3->category_id); ?>"><?php echo $row3->category_name ?></a></li>
                                    <?php } ?>
                                </ul>
                            </li>

                            <li class="selected"><a href="<?php echo base_url(); ?>index.php/home/contact">Liên hệ</a></li>
                        </ul>
                    </nav>
                    <!-- top navigation menu end -->

                    <div class="f-right">
                        <!-- top search start -->
                        <!--                            <div class="top-search">
                                                        <a href="#" class="main-color"><span class="fa fa-search"></span></a>
                                                        <div class="search-box">
                                                            <input type="text" name="t" placeHolder="Type And Hit Enter..." />
                                                        </div>
                                                    </div>-->
                        <!-- top search end -->

                        <!-- cart start -->
                        <div class="top-cart">
                            <div id="added_list" class="cart-box" style=" width: 80%;
                                 height: 20em;overflow: scroll;
                                 overflow-x: hidden;">

                            </div>
                        </div>
                    </div>
                    </header>
                </div></body>