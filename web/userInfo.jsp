<%-- 
    Document   : info
    Created on : May 31, 2022, 7:22:20 PM
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
                    <div class="table__box-sign-in-info">
                        <div class="table__sign-in-container">
                            <div class="table__title">
                                <h2 class="table__title-heading">COFFIE</h2>
                                <h3 class="table__title-subheading">Spice up your creating process</h3>
                                <span class="table__title-text">Create an account</span>
                            </div>
                            <div class="table__container-signup">
                                <div class="table__container-box">
                                    <form action="signInController" method="post" onsubmit="return validate_form();">
                                        <input type="text" name="account" hidden value="<%=request.getParameter("username")%>">
                                        <input type="password" name="password" hidden value="<%=request.getParameter("password")%>">
                                        <fieldset class="table__container-form-input">
                                            <legend>Nickname</legend>
                                            <div class="table__signup-input-field">
                                                <input type="text" name="nickname" placeholder="Nickname" maxlength="15" class="table__signup-input js-table__input" onKeyPress="checkUserSignIn()" onKeyUp="checkUserSignIn()" autocomplete="off" value="">
                                                <div class="table__signup-note">
                                                    <p>Nickname will be displayed as your name</p>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset class="table__container-form-radio">
                                            <legend>Gender</legend>
                                            <div class="table__radio-group gender">
                                                <input type="radio" name="gender" id="gender-male" value="1">
                                                <label for="gender-male" onclick="onCheckBoxRadio(this)">
                                                    <div class="radio"></div>
                                                    Male
                                                </label>
                                            </div>
                                            <div class="table__radio-group gender">
                                                <input type="radio" name="gender" id="gender-female" value="2">
                                                <label for="gender-female" onclick="onCheckBoxRadio(this)">
                                                    <div class="radio"></div>
                                                    Female
                                                </label>
                                            </div>
                                            <div class="table__radio-group gender">
                                                <input type="radio" name="gender" id="gender" value="0">
                                                <label for="gender" onclick="onCheckBoxRadio(this)">
                                                    <div class="radio"></div>
                                                    Other
                                                </label>
                                            </div>
                                        </fieldset>
                                        <fieldset class="table__container-form-birth">
                                            <legend>Phone</legend>
                                            <div class="table__date-selector">
                                                <input type="number" name="phone" class="table__input js-table__input" placeholder="Phone" onKeyPress="checkUserSignIn()" onKeyUp="checkUserSignIn()" autocomplete="off" style="background-color: #fff;" value="">
                                            </div>
                                        </fieldset>
                                        <div class="table__set-captcha">
                                            <div class="g-recaptcha"
                                                 data-sitekey="6LdE5DAgAAAAANRHTF1V_8guF5qwpuKlSMOMAfVD">
                                            </div>
                                        </div>
                                        <input type="submit" class="table__input-submit js__input-submit" disabled
                                               value="Create an account">
                                    </form>
                                    <div class="table__footer">
                                        This site is protected by reCAPTCHA Enterprise and the Google<a
                                            href="https://policies.google.com/privacy" target="_blank" rel="noopener">
                                            Privacy
                                            Policy</a> and <a href="https://policies.google.com/terms" target="_blank"
                                                          rel="noopener"> Terms of Service</a> apply.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <script src="asssets/js/user.js"></script>
    </body>

</html>