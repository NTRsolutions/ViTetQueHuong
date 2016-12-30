<div id="contentWrapper">

    <div class="pageContent">

        <div class="page-title title-1">
            <div class="container">
                <div class="row">
                    <h1>Register Style 1</h1>
                    <h3>This is sub heading text to describe the page functionality</h3>

                    <div class="breadcrumbs">
                        <a href="#">Home</a><i class="fa fa-long-arrow-right main-color"></i><a href="#">Pages</a><i class="fa fa-long-arrow-right main-color"></i><span>Register Style 1</span>
                    </div>

                </div>
            </div>
        </div>

        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 contact-form">
                        <div class="heading">
                            <h3 class="uppercase head-6"><span class="main-color">Form</span> Đăng kí</h3>
                        </div>
                        <?php
                        echo form_open(base_url() . 'index.php/home/registration/add_info/', array(
                            'class' => 'log-reg-v3 sky-form',
                            'method' => 'post',
                            'style' => 'padding:30px !important;',
                            'id' => 'login_form'
                        ));
                        ?>  
                        <div class="form-input">
                            <label>Tên<span class="red">*</span></label><input type="text" placeholder="<?php echo translate('your_first_name'); ?>" name="username" class="form-control shape" required="required" >
                        </div>
                        <div class="form-input">
                            <label>Họ<span class="red">*</span></label><input type="text" placeholder="<?php echo translate('your_last_name'); ?>" name="surname" class="form-control shape" required="required" >
                        </div>
                        <div class="form-input">
                            <label>Email<span class="red">*</span></label><input type="email" placeholder="<?php echo translate('email_address'); ?>" name="email" class="form-control shape" required="required" >
                        </div>
                        <div class="form-input">
                            <label>Mật khẩu<span class="red">*</span></label><input type="password" placeholder="<?php echo translate('password'); ?>" name="password1" class="form-control shape pass1" required="required">
                        </div>
                        <div class="form-input">
                            <label>Xác nhận mật khẩu<span class="red">*</span></label><input type="password" placeholder="<?php echo translate('confirm_password'); ?>" name="password2" class="form-control shape pass2" required="required">
                        </div>
                        <div class="form-input">
                            <label>Phone<span class="red">*</span></label><input type="text" placeholder="<?php echo translate('phone'); ?>" name="phone" class="form-control shape" required="required">
                        </div>
                        <div class="form-input">
                            <label>Địa chỉ 1 <span class="red">*</span></label><input type="text" placeholder="<?php echo translate('address_line_1'); ?>" name="address1" class="form-control shape" required="required">
                        </div>
<!--                        <div class="form-input">
                            <label>Địa chỉ 2 <span class="red">*</span></label><input type="text" placeholder="<?php echo translate('address_line_2'); ?>" name="address2" class="form-control">
                        </div>-->
                        <div class="form-input">
                            <label>City <span class="red">*</span></label><input type="text" placeholder="<?php echo translate('city'); ?>" name="city" class="form-control shape" required="required">
                        </div>
                        <div class="form-input">
                            <label>Zip code <span class="red">*</span></label><input type="text" placeholder="<?php echo translate('ZIP'); ?>" name="zip" class="form-control shape" required="required">
                        </div>
                        <div class="clearfix"></div>

                        <div class="clearfix"></div>
                        <div class="button-group">
                            <input type="submit" class="btn btn-md main-bg shape" value="Submit"><input type="reset" class="btn btn-default btn-md shape" value="Reset">
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

                    <div class="col-md-5">


                        <div class="panel-group accordion style-3 shape" id="accordion-5" role="tablist">
                            <div class="panel">
                                <div class="panel-heading" role="tab" id="heading-1">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion-5" href="#acc-1" aria-expanded="true" aria-controls="acc-1"><i class="fa fa-desktop main-color"></i>How Can i register in the site ?</a>
                                    </h4>
                                </div>
                                <div id="acc-1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading-1">
                                    <div class="panel-body">
                                        <p>Mauris in quam tristique, dignissim urna in, molestie felis. Fusce tristique, elit nec vehicula imperdiet, eros est egestas odio, at aliquet elit nulla sed.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel">
                                <div class="panel-heading" role="tab" id="heading-2">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-5" href="#acc-2" aria-expanded="false" aria-controls="acc-2"><i class="fa fa-circle-o-notch main-color"></i>How to make Retina Ready designs</a>
                                    </h4>
                                </div>
                                <div id="acc-2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-2">
                                    <div class="panel-body">
                                        <p>Mauris in quam tristique, dignissim urna in, molestie felis. Fusce tristique, elit nec vehicula imperdiet, eros est egestas odio, at aliquet elit nulla sed.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel">
                                <div class="panel-heading" role="tab" id="heading-3">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-5" href="#acc-3" aria-expanded="false" aria-controls="acc-3"><i class="fa fa-apple main-color"></i>Do i have to register in your site ?</a>
                                    </h4>
                                </div>
                                <div id="acc-3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-3">
                                    <div class="panel-body">
                                        <p>Mauris in quam tristique, dignissim urna in, molestie felis. Fusce tristique, elit nec vehicula imperdiet, eros est egestas odio, at aliquet elit nulla sed.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel">
                                <div class="panel-heading" role="tab" id="heading-4">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-5" href="#acc-4" aria-expanded="false" aria-controls="acc-4"><i class="fa fa-adjust main-color"></i>What are the steps for registeration in the site ?</a>
                                    </h4>
                                </div>
                                <div id="acc-4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-4">
                                    <div class="panel-body">
                                        <p>Mauris in quam tristique, dignissim urna in, molestie felis. Fusce tristique, elit nec vehicula imperdiet, eros est egestas odio, at aliquet elit nulla sed.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel">
                                <div class="panel-heading" role="tab" id="heading-5">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion-5" href="#acc-5" aria-expanded="false" aria-controls="acc-5"><i class="fa fa-shopping-cart main-color"></i>is there any way to buy from the site ?</a>
                                    </h4>
                                </div>
                                <div id="acc-5" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-5">
                                    <div class="panel-body">
                                        <p>Mauris in quam tristique, dignissim urna in, molestie felis. Fusce tristique, elit nec vehicula imperdiet, eros est egestas odio, at aliquet elit nulla sed.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>



    </div>	
    <script>
        $(".pass2").blur(function () {
            var pass1 = $(".pass1").val();
            var pass2 = $(".pass2").val();
            if (pass1 !== pass2) {
                $("#pass_note").html('<?php echo translate('password_mismatched'); ?>');
                $(".reg_btn").attr("disabled", "disabled");
            } else if (pass1 == pass2) {
                $("#pass_note").html('');
                $(".reg_btn").removeAttr("disabled");
            }
        });

        $(".emails").blur(function () {
            var email = $(".emails").val();
            $.post("<?php echo base_url(); ?>index.php/home/exists",
                    {
<?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>',
                        email: email
                    },
                    function (data, status) {
                        if (data == 'yes') {
                            $("#email_note").html('*<?php echo 'email_already_registered'; ?>');
                            $(".reg_btn").attr("disabled", "disabled");
                        } else if (data == 'no') {
                            $("#email_note").html('');
                            $(".reg_btn").removeAttr("disabled");
                        }
                    });
        });
    </script>