<!-- Content Start -->
<div id="contentWrapper">
    <div class="gmap" >
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.828957116078!2d105.7667154143221!3d10.030969375253655!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0883d0dac6b15%3A0xf6ae5b1bd18625!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBD4bqnbiBUaMah!5e0!3m2!1svi!2s!4v1481949986525" width="80%" height="450" frameborder="0" style="border:0;margin-left:158px; " allowfullscreen></iframe>
        <div id="map_canvas" style="height: 10px; width: 100%;">
            <script type="text/javascript">
                function init_map() {
                    var iconBase = 'assets/images/icons/';
                    var myOptions = {zoom: 20, disableDefaultUI: true, center: new google.maps.LatLng(40.805478, -73.96522499999998), mapTypeId: google.maps.MapTypeId.ROADMAP};
                    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                    marker = new google.maps.Marker({map: map, icon: iconBase + 'marker.png', animation: google.maps.Animation.DROP, position: new google.maps.LatLng(40.805478, -73.96522499999998)});
                    infowindow = new google.maps.InfoWindow({content: "<div class='noScroll'><b>Headquarter</b><br/>2880 Broadway<br/> New York</div>"});
                    google.maps.event.addListener(marker, "click", function () {
                        infowindow.open(map, marker);
                    });
                    infowindow.open(map, marker);
                }
                google.maps.event.addDomListener(window, 'load', init_map);
            </script>
        </div>
    </div>
    <div class="section">
        <div class="container">
            <div class="heading centered">
                <i class="fa fa-envelope tbl main-color"></i>
                <h3 class="uppercase head-4 bold">THÔNG ĐIỆP</h3>
                <p class="sub-heading">Chúng tôi luôn hướng đến mục tiêu vì sự hài lòng của khách hàng, vì sự phát triển của của các sản phẩm đặc sản vùng miền. Chúng tôi luôn cố gắng nỗ lực làm hài lòng khách hàng thông qua những sản phẩm được đảm bảo chất lượng, với mức giá cả cạnh tranh.<br><font color="maroon"> Mạng Phân Phối hân hạnh đồng hành cùng Tết Việt.<font></p>
            </div>
            <div class="center_contact" id="contact">
                <div id="message">
                    <div class="cont-success t-center"><i class="fa fa-thumbs-o-up success-icon"></i><p class="congrats main-color">Thank You!</p><p class="congratsTxt">Your message was successfuly sent , We will get back to you very soon, if you need to browse our site just click the link below.</p><div><a href="index.html" class="btn btn-lg main-bg">Go to home page</a></div></div>
                </div>
                <?php
                echo form_open(base_url() . 'index.php/home/contact/send', array(
                    'class' => 'sky-form',
                    'method' => 'post',
                    'enctype' => 'multipart/form-data',
                    'id' => 'sky-form3'
                ));
                ?>
                <div class="form-input">
                    <input type="text" required="required" class="form-control shape" name="name" id="name" placeholder="Họ và tên(*)">
                </div>
                <div class="form-input">
                    <input name="email" type="email" id="email" class="form-control shape" required="required" placeholder="Email(*)">
                </div>
                <div class="form-input">
                    <input name="subject" type="subject" id="subject" class="form-control shape" required="required" placeholder="Tiêu đề(*)">
                </div>
                <div class="form-input">
                    <input name="phone" type="phone" id="phone" class="form-control shape" placeholder="Số điện thoại">			    						
                </div>
                <div class="form-input">
                    <textarea required="required" class="shape" name="message" cols="40" rows="7" id="messageTxt" spellcheck="true" placeholder="Tin nhắn của bạn(*)"></textarea>
                </div>
                <section>
                    <?php echo $recaptcha_html; ?>
                </section>
                <div class="form-input center-tbl width-percent-50">
                    <input type="submit" class="btn btn-lg main-bg btn-block submit-btn shape" value="Gửi tin nhắn">
                </div>
                </form>
            </div>
        </div>
    </div>
    <div class="section gry-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="white-bg lg-box shape lg">
                        <i class="fa fa-map-marker main-color"></i>
                        <h4>Địa chỉ</h4>
                        <p>Tòa nhà Ươm tạo doanh nghiệp và công nghệ <br>Cổng C, khu II, Trường Đại học Cần Thơ.
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="white-bg lg-box shape lg">
                        <i class="fa fa-phone-square main-color"></i>
                        <h4>Số điện thoại</h4>
                        <p>
                            +84 901.211.045
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="white-bg lg-box shape lg">
                        <i class="fa fa-envelope main-color"></i>
                        <h4>E-mail</h4>
                        <p>
                            info@mangphanphoi.vn
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

