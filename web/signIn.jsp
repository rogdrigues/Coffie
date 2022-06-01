<%-- 
    Document   : signIn
    Created on : May 31, 2022, 9:22:06 PM
    Author     : phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Coffie</title>
        <link href='https://fonts.googleapis.com/css?family=Antic Didone' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
        <link rel="stylesheet" href="asssets/css/style.css">
        <link rel="stylesheet" href="asssets/css/base.css">
        <link rel="stylesheet" href="asssets/font/themify-icons/themify-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
        <div class="main">
            <div class="table">
                <div class="table__container">
                    <div class="table__slide">
                        <div class="table__img" style="background-image:url('asssets/img/signup.jpg')"></div>
                    </div>
                    <div class="table__box">
                        <div class="table__body">
                            <div class="table__title">
                                <h2 class="table__title-heading">COFFIE</h2>
                                <h3 class="table__title-subheading">Spice up your creating process</h3>
                                <span class="table__title-text">Create an account</span>
                            </div>
                            <form action="userInfo.jsp" method="post">
                                <div class="table__input-field">
                                    <input type="text" name="username" class="table__input" onKeyPress="checkInputUser()" onKeyUp="checkInputUser()" placeholder="Account" value="" autocomplete="off">
                                </div>
                                <div class="table__input-field">
                                    <input type="password" name="password" class="table__input" onKeyPress="checkInputUser()" onKeyUp="checkInputUser()" placeholder="Password" value="" autocomplete="off">
                                </div>
                                <input type="submit" class="table__input-submit" disabled value="Next">
                                <button type="submit" class="table__input-connect" disabled="disabled">
                                    <i class="table__input-connect-icon fa fa-twitter"
                                       style="font-size:30px;color:#1da1f2"></i>
                                    <span class="table__input-connect-text"> Continue with Twitter</span>
                                </button>
                                <button type="submit" class="table__input-connect" disabled="disabled">
                                    <i class="table__input-connect-icon ti-google"
                                       style="font-size:30px;color:#1da1f2;"></i>
                                    <span class="table__input-connect-text">
                                        Continue with Google
                                    </span>
                                </button>
                                <button type="submit" class="table__input-connect" disabled="disabled">
                                    <i class="table__input-connect-icon fa fa-facebook-square"
                                       style="font-size:30px;color:#1da1f2;"></i>
                                    <span class="table__input-connect-text"> Continue with Facebook
                                    </span>
                                </button>
                            </form>
                            <a href="login.html" class="table__sign-in">Log in</a>
                            <div class="table__footer" style="padding-bottom:1px;">
                                This site is protected by reCAPTCHA Enterprise and the Google<a
                                    href="https://policies.google.com/privacy" target="_blank" rel="noopener"> Privacy
                                    Policy</a> and <a href="https://policies.google.com/terms" target="_blank"
                                                  rel="noopener"> Terms of Service</a> apply.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="asssets/js/user.js"></script>
    </body>

</html>