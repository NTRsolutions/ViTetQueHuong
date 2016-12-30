<!-- Footer start -->
<footer id="footWrapper">
    <!--    <div class="footer-top main-bg">
            <div class="container">
                <div id="twitter-feed" class="slick-s shape"></div>
            </div>
        </div>-->
    <div class="footer-middle" style="padding-top: 70px; padding-bottom: 50px">
        <div class="container">
            <div class="row">
                <!-- Tags Cloud footer cell start -->
                <div class="col-md-4 first contact-widget">
                    <h3>Liên hệ</h3>
                    <ul class="details">
                        <li><i class="fa fa-map-marker shape"></i><span><span class="heavy-font">Địa chỉ: </span>Tòa nhà Ươm tạo doanh nghiệp và công nghệ Cổng C, khu II, Trường Đại học Cần Thơ. </span></li>
                        <li><i class="fa fa-envelope shape"></i><span><span class="heavy-font">Email: </span>info@mangphanphoi.vn</span></li>
                        <li><i class="fa fa-phone shape"></i><span><span class="heavy-font">Tel: </span>+84 901.211.045</span></li>
                    </ul>
                </div>
                <!-- Tags Cloud footer cell start -->

                <!-- main menu footer cell start -->
                <div class="col-md-4 ">
                    <h3>Main Menu</h3>
                    <ul class="menu-widget">
                        <li><a href="<?php echo base_url(); ?>index.php/home">TRANG CHỦ</a></li>
                        <li><a href="<?php echo base_url(); ?>index.php/home/gioithieu">GIỚI THIỆU</a></li>
                        <?php
                        $categories = $this->crud_model->Show_all_category();
                        foreach ($categories as $row3) {
                            ?>
                            <li><a href="<?php echo $this->crud_model->category_link($row3->category_id); ?>"><?php echo $row3->category_name ?></a></li>
                        <?php } ?>
                        <li><a href="<?php echo base_url(); ?>index.php/home/contact">LIÊN HỆ</a></li>
                    </ul>
                </div>
                <!-- main menu footer cell start -->
                <!-- Tags Cloud footer cell start -->
                <div class="col-md-4 last contact-widget">
                    <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FV%25E1%25BB%258B-T%25E1%25BA%25BFt-Qu%25C3%25AA-H%25C6%25B0%25C6%25A1ng-375070639512634%2F%3Ffref%3Dts&tabs=timeline&width=340&height=470&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=1400043393356379" width="340" height="470" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
                </div>
                <!-- Tags Cloud footer cell start -->
            </div>         
        </div>	
    </div>

    <!-- footer bottom bar start -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div style="text-align: center" class="copyrights col-md-12 first">© Copyrights <b class="main-color">mangphanphoi</b> 2017. All rights reserved.</div>
            </div>
        </div>
    </div>
    <!-- footer bottom bar end -->
</footer>
<!-- Footer end -->
