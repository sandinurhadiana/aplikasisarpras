<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-4">
            <div class="kotak">
                <div>
                    <h4><i class="fa fa-key"></i> Silakan Masuk</h4>
                    <hr />
                    <?php 
                    $this :: display_page_errors();     
                    ?>
                    <form name="loginForm" action="<?php print_link('index/login/?csrf_token=' . Csrf::$token); ?>" class="needs-validation form page-form" method="post">
                        <div class="input-group form-group">
                            <input placeholder="Username Or Email" name="username"  required="required" class="form-control" type="text"  />
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="form-control-feedback fa fa-user"></i></span>
                            </div>
                        </div>
                        
                        <div class="input-group form-group">
                            
                            <input  placeholder="Password" required="required" v-model="user.password" name="password" class="form-control " type="password" />
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="form-control-feedback fa fa-key"></i></span>
                            </div>
                        </div>
                        <div class="row clearfix mt-3 mb-3">
                            
                            <div class="col-6">
                                <label class="">
                                    <input value="true" type="checkbox" name="rememberme" />
                                    Remember Me
                                </label>
                            </div>
                            
                            <div class="col-6">
                                <a href="<?php print_link('passwordmanager') ?>" class="text-danger"> Reset Password?</a>
                            </div>
                            
                        </div>
                        
                        <div class="form-group text-center">
                            <button class="glow-on-hover type="submit"> 
                                <i class="load-indicator">
                                    <clip-loader :loading="loading" color="#fff" size="20px"></clip-loader> 
                                </i>
                                Masuk <i class="fa fa-key"></i>
                            </button>
                        </div>
                        <hr />
                        
                        <div class="text-center">
                            Belum memiliki akun? <a href="<?php print_link("index/register") ?>" class="btndaftar">Daftar
                            <i class="fa fa-user"></i></a>
                        </div>
                        
                    </form>
                </div>
                
                
            </div>
        </div>
    </div>
</div>
