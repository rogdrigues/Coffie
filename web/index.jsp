<%-- 
    Document   : index
    Created on : May 27, 2022, 3:49:10 PM
    Author     : phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scaleable=no">
    <title>Coffie</title>
    <link href='https://fonts.googleapis.com/css?family=Antic Didone' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="asssets/css/style.css">
    <link rel="stylesheet" href="asssets/css/base.css">
    <link rel="stylesheet" href="asssets/font/themify-icons/themify-icons.css">
</head>

<body>
    <div class="main">
        <header class="header">
            <div class="header__container">
                <a href="#" class="header__coffie-content">
                    <svg xmlns="http://www.w3.org/2000/svg" class="header__coffie-logo-icon" width="24" height="24">
                        <path
                            d="M5 2h2v3H5zm4 0h2v3H9zm4 0h2v3h-2zm6 7h-2V7H3v11c0 1.654 1.346 3 3 3h8c1.654 0 3-1.346 3-3h2c1.103 0 2-.897 2-2v-5c0-1.103-.897-2-2-2zm-4 9a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1V9h10v9zm2-2v-5h2l.002 5H17z">
                        </path>
                    </svg>
                    <h3 class="header__coffie-heading">COFFIE</h3>
                </a>
                <ul class="header__navbar-list">
                    <li class="header__navbar-item">
                        <a href="#Home" class="header__navbar-item-link">
                            <p class="header__navbar-item-text">
                                Home
                            </p>
                        </a>
                    </li>
                    <li class="header__navbar-item">
                        <a href="#about" class="header__navbar-item-link">
                            <p class="header__navbar-item-text">
                                About
                            </p>
                        </a>
                    </li>
                    <li class="header__navbar-item">
                        <a href="#Products" class="header__navbar-item-link">
                            <p class="header__navbar-item-text">
                                Products
                            </p>
                        </a>
                    </li>
                    <li class="header__navbar-item">
                        <a href="#Premium" class="header__navbar-item-link">
                            <p class="header__navbar-item-text">
                                Premium
                            </p>
                        </a>
                    </li>
                    <li class="header__navbar-item">
                        <a href="#Blog" class="header__navbar-item-link">
                            <p class="header__navbar-item-text">
                                Blog
                            </p>
                        </a>
                    </li>
                </ul>
                <div class="header__data">
                    <%  int status = -1;
                        if(session.getAttribute("status") != null){
                            status = (int)session.getAttribute("status");
                        }
                        if(status < 0){
                    %>
                    <div class="header__loggout">
                        <a href="login.jsp" target="_self" class="header__loggout-link">
                            <button class="header__navbar-btn">Log in</button>
                        </a>
                        <a href="signIn.jsp" target="_self" class="header__loggout-link">
                            <button class="header__navbar-btn button-radius">Sign up</button>
                        </a>
                    </div>
                    <%}else{%>
                     <div class="header__logging">
                        <div class="header__logging-title">
                            <img src="asssets/img/avatar.webp" alt="" class="header__logging-img">
                            <div class="header__logging-icon">
                                <i class="header__logging-icon-down ti-angle-down"></i>
                            </div>
                        </div>
                        <div class="header__logging-data">
                            <div class="header__logging-overlay"></div>
                            <ul class="header__logging-list">
                                <div class="header__logging-space"></div>
                                <div class="header__logging-box">
                                    <div class="header__logging-avatar">
                                        <img src="asssets/img/avatar.webp" alt="" class="header__logging-avatar-img">
                                        <div class="header__logging-close">
                                            <i class="header__logging-close-icon ti-arrow-circle-left"></i>
                                        </div>
                                    </div>
                                    <span class="header__logging-user">@rogdrigues</span>
                                    <div class="header__logging-box-manage">
                                        <a href="#" class="header__logging-box-group">
                                            <div class="header__logging-box-quantity">514$</div>
                                            <div class="header__logging-box-text">Balance</div>
                                        </a>
                                        <a href="#" class="header__logging-box-group">
                                            <div class="header__logging-box-quantity">3</div>
                                            <div class="header__logging-box-text">Order</div>
                                        </a>
                                    </div>
                                </div>
                                <div class="header__logging-column-gap"></div>
                                <li class="header__logging-item">
                                    <a href="" class="header__logging-item-link">Account</a>
                                </li>
                                <li class="header__logging-item">
                                    <a href="" class="header__logging-item-link">Dashboard</a>
                                </li>
                                <div class="header__logging-column-gap"></div>
                                <li class="header__logging-item">
                                    <a href="" class="header__logging-item-link">Bookmarks</a>
                                </li>
                                <div class="header__logging-column-gap"></div>
                                <li class="header__logging-item">
                                    <a href="" class="header__logging-item-link">Money management</a>
                                </li>
                                <div class="header__logging-column-gap"></div>
                                <div class="header__logging-settings">Settings</div>
                                <li class="header__logging-item">
                                    <a href="" class="header__logging-item-link">Send Feed back</a>
                                </li>
                                <li class="header__logging-item">
                                    <div class="header__dark-theme">
                                        <span class="header__logging-item-link">Dark Theme</span>
                                        <label class="skeuo__switch">
                                            <input type="checkbox" class="skeuo__input">
                                            <div class="skeuo__rail">
                                                <span class="skeuo__circle"></span>
                                            </div>
                                            <span class="skeuo__indicator"></span>
                                        </label>
                                    </div>
                                </li>
                                <div class="header__logging-column-gap"></div>
                                <li class="header__logging-item">
                                    <a href="" class="header__logging-item-link">Log out</a>
                                </li>
                                <div class="header__logging-column-gap"></div>
                            </ul>
                        </div>
                    </div>
                     <%}%>
                    <div class="header__navbar-menu">
                        <input type="checkbox" hidden id="header__check-box" class="header__check">
                        <label for="header__check-box">
                            <i class="header__navbar-menu-icon ti-layout-grid2"></i>
                        </label>
                        <label for="header__check-box" class="header__mobile-menu-overlay"></label>
                        <div class="header__mobile-menu">
                            <div class="header__mobile-box">
                                <label for="header__check-box">
                                    <i class="header__menu-icon ti-layout-grid2"></i>
                                </label>
                                <a href="#" class="header__coffie-content">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="header__coffie-logo-icon" width="24"
                                        height="24" style="fill: var(--white-color);">
                                        <path
                                            d="M5 2h2v3H5zm4 0h2v3H9zm4 0h2v3h-2zm6 7h-2V7H3v11c0 1.654 1.346 3 3 3h8c1.654 0 3-1.346 3-3h2c1.103 0 2-.897 2-2v-5c0-1.103-.897-2-2-2zm-4 9a1 1 0 0 1-1 1H6a1 1 0 0 1-1-1V9h10v9zm2-2v-5h2l.002 5H17z">
                                        </path>
                                    </svg>
                                    <h3 class="header__coffie-heading">COFFIE</h3>
                                </a>
                            </div>
                            <ul class="header__navbar-list-mobile" style="border-top:1px solid rgba(0, 0, 0, 0.4);">
                                <h3 style="margin-top:10px">Home</h3>
                                <li class="header__navbar-item on-mobile">
                                    <a href="#Home" class="header__navbar-item-link">
                                        <div class="header__navbar-item-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                style="fill: var(--white-color);">
                                                <path
                                                    d="M12.71 2.29a1 1 0 0 0-1.42 0l-9 9a1 1 0 0 0 0 1.42A1 1 0 0 0 3 13h1v7a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-7h1a1 1 0 0 0 1-1 1 1 0 0 0-.29-.71zM6 20v-9.59l6-6 6 6V20z">
                                                </path>
                                            </svg>
                                        </div>
                                        <p class="header__navbar-item-text">
                                            Home
                                        </p>
                                    </a>
                                </li>
                                <li class="header__navbar-item on-mobile">
                                    <a href="#about" class="header__navbar-item-link">
                                        <div class="header__navbar-item-icon">
                                            <svg fill="#000000" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"
                                                width="24" height="24" style="fill: var(--white-color);">
                                                <path
                                                    d="M 25 1 C 11.222656 1 0 10.878906 0 23.1875 C 0 29.234375 2.773438 34.664063 7.21875 38.6875 C 6.546875 40.761719 5.046875 42.398438 3.53125 43.65625 C 2.714844 44.332031 1.933594 44.910156 1.3125 45.46875 C 1.003906 45.746094 0.722656 46.027344 0.5 46.375 C 0.277344 46.722656 0.078125 47.21875 0.21875 47.75 L 0.34375 48.15625 L 0.6875 48.375 C 1.976563 49.117188 3.582031 49.246094 5.3125 49.125 C 7.042969 49.003906 8.929688 48.605469 10.78125 48.09375 C 14.375 47.101563 17.75 45.6875 19.53125 44.90625 C 21.289063 45.273438 23.054688 45.5 24.90625 45.5 C 38.683594 45.5 49.90625 35.621094 49.90625 23.3125 C 49.90625 11.007813 38.78125 1 25 1 Z M 25 3 C 37.820313 3 47.90625 12.214844 47.90625 23.3125 C 47.90625 34.402344 37.730469 43.5 24.90625 43.5 C 23.078125 43.5 21.355469 43.320313 19.625 42.9375 L 19.28125 42.84375 L 19 43 C 17.328125 43.738281 13.792969 45.179688 10.25 46.15625 C 8.476563 46.644531 6.710938 47.019531 5.1875 47.125 C 4.167969 47.195313 3.539063 46.953125 2.84375 46.78125 C 3.339844 46.355469 4.019531 45.847656 4.8125 45.1875 C 6.554688 43.742188 8.644531 41.730469 9.375 38.75 L 9.53125 38.125 L 9.03125 37.75 C 4.625 34.015625 2 28.875 2 23.1875 C 2 12.097656 12.175781 3 25 3 Z M 23.8125 12.8125 C 23.511719 12.8125 23.40625 12.988281 23.40625 13.1875 L 23.40625 15.8125 C 23.40625 16.113281 23.613281 16.1875 23.8125 16.1875 L 26.1875 16.1875 C 26.488281 16.1875 26.59375 16.011719 26.59375 15.8125 L 26.59375 13.1875 C 26.59375 12.886719 26.386719 12.8125 26.1875 12.8125 Z M 23.90625 20.09375 C 23.605469 20.09375 23.5 20.300781 23.5 20.5 L 23.5 33.90625 C 23.5 34.207031 23.707031 34.3125 23.90625 34.3125 L 23.90625 34.40625 L 26.1875 34.40625 C 26.488281 34.40625 26.59375 34.199219 26.59375 34 L 26.59375 20.5 C 26.59375 20.199219 26.386719 20.09375 26.1875 20.09375 Z" />
                                            </svg>
                                        </div>
                                        <p class="header__navbar-item-text">
                                            About
                                        </p>
                                    </a>
                                </li>
                                <li class="header__navbar-item on-mobile">
                                    <a href="#Products" class="header__navbar-item-link">
                                        <div class="header__navbar-item-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                style="fill: var(--white-color);">
                                                <path
                                                    d="M3 2h2v20H3zm16 0H6v20h13c1.103 0 2-.897 2-2V4c0-1.103-.897-2-2-2zm-1 10H9v-2h9v2zm0-4H9V6h9v2z">
                                                </path>
                                            </svg>
                                        </div>
                                        <p class="header__navbar-item-text">
                                            Products
                                        </p>
                                    </a>
                                </li>
                                <li class="header__navbar-item on-mobile">
                                    <a href="#Premium" class="header__navbar-item-link">
                                        <div class="header__navbar-item-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                style="fill: var(--white-color);">
                                                <path
                                                    d="M16 2H8C4.691 2 2 4.691 2 8v12a1 1 0 0 0 1 1h13c3.309 0 6-2.691 6-6V8c0-3.309-2.691-6-6-6zm4 13c0 2.206-1.794 4-4 4H4V8c0-2.206 1.794-4 4-4h8c2.206 0 4 1.794 4 4v7z">
                                                </path>
                                                <circle cx="9.5" cy="11.5" r="1.5"></circle>
                                                <circle cx="14.5" cy="11.5" r="1.5"></circle>
                                            </svg>
                                        </div>
                                        <p class="header__navbar-item-text">
                                            Premium
                                        </p>
                                    </a>
                                </li>
                                <li class="header__navbar-item on-mobile">
                                    <a href="#Blog" class="header__navbar-item-link">
                                        <div class="header__navbar-item-icon">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                style="fill: var(--white-color);">
                                                <path
                                                    d="M20.954 10.667c-.072-.322-.272-.621-.502-.745-.07-.039-.522-.088-1.004-.109-.809-.036-.898-.052-1.152-.201-.405-.237-.516-.493-.518-1.187-.002-1.327-.554-2.559-1.646-3.67-.776-.793-1.645-1.329-2.634-1.629-.236-.072-.768-.097-2.545-.118-2.787-.033-3.405.024-4.356.402-1.748.697-3.008 2.166-3.465 4.05-.087.353-.103.92-.124 4.177-.025 4.08.004 4.68.258 5.488.212.668.425 1.077.861 1.657.835 1.108 2.083 1.907 3.334 2.133.595.107 7.931.135 8.683.032 1.306-.178 2.331-.702 3.293-1.684.694-.71 1.129-1.479 1.414-2.499.117-.424.127-.63.149-3.117.017-1.878.002-2.758-.046-2.98zM8.007 8.108c.313-.316.399-.329 2.364-.329 1.764 0 1.822.004 2.081.134.375.189.538.456.538.88 0 .384-.153.653-.493.869-.184.115-.293.123-2.021.133-1.067.007-1.916-.013-2.043-.048-.669-.184-.918-1.143-.426-1.639zm7.706 8.037-.597.098-3.114.035c-2.736.033-3.511-.018-3.652-.08-.288-.124-.554-.472-.602-.78-.042-.292.104-.696.33-.9.285-.257.409-.266 3.911-.27 3.602-.002 3.583-.003 3.925.315.482.45.381 1.251-.201 1.582z">
                                                </path>
                                            </svg>
                                        </div>
                                        <p class="header__navbar-item-text">
                                            Blog
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <section class="home" id="Home">
            <div class="home__container">
                <div class="home__slide">
                    <img src="asssets/img/home.jpg" alt="" class="home__img">
                </div>
                <div class="home__content container">
                    <span class="home__data-subtitle">A special unique coffee</span>
                    <div class="home__introduce">
                        <h1 class="home__title">
                            <p class="home__title-highlight-text">Discover the taste and the savoury of
                                a real coffee<span class="home__dot-color">.</span>
                        </h1>
                        <p class="home__description">
                            Buy the best and premium coffee makers
                        </p>
                    </div>
                    <div class="home__data">
                        <div class="home__data-group">
                            <h2 class="home__data-number">120K</h2>
                            <h3 class="home__data-title">Testing</h3>
                            <p class="home__data-description">
                                Testing from various customers who trust us
                            </p>
                        </div>
                        <div class="home__data-group">
                            <h2 class="home__data-number">340+</h2>
                            <h3 class="home__data-title">Exclusive Product</h3>
                            <p class="home__data-description">
                                Premium Preparation with high quality ingredients
                            </p>
                        </div>
                    </div>
                    <div class="home__scroll">
                        <a href="#about" class="home__scroll-link">
                            <img src="asssets/img/scroll.png" alt="" class="home__scroll-img">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <div class="grid-column wide">
            <section class="about section" id="about">
                <div class="about__container">
                    <div class="about__content container">
                        <div class="about__box">
                            <h2 class="section__title" style="color:var(--black-color)">
                                Who we really are & why choose us
                            </h2>
                        </div>
                        <div class="about__category">
                            <div class="about__group">
                                <img src="asssets/img/specialty1.png" alt="" class="about__img">
                                <h3 class="about__title">
                                    Selected Coffee
                                </h3>
                                <p class="about__description">
                                    We select the best premium coffe, for a true taste.
                                </p>
                            </div>
                            <div class="about__group">
                                <img src="asssets/img/specialty2.png" alt="" class="about__img">
                                <h3 class="about__title">
                                    Delicious Cake
                                </h3>
                                <p class="about__description">
                                    Enjoy your coffee with some delicious cake.
                                </p>
                            </div>
                            <div class="about__group">
                                <img src="asssets/img/specialty3.png" alt="" class="about__img">
                                <h3 class="about__title">
                                    Enjoy at home
                                </h3>
                                <p class="about__description">
                                    Order at home and enjoy your best coffee in the comfort of your home.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="products section" id="Products">
                <div class="products__container">
                    <div class="products__container container">
                        <div class="products__box">
                            <h2 class="section__title" style="color:var(--black-color)">
                                Choose our delicious and your best coffees and cakes
                            </h2>
                        </div>
                        <ul class="products__category">
                            <li class="products__arrow">
                                <i class="ti-arrow-circle-left"></i>
                            </li>
                            <li class="products__group" data-filter=".delicacies" style="display:block;">
                                <div class="products__item-group">
                                    <h3 class="products__title">Hot menu</h3>
                                    <p class="products__description">
                                        8 products
                                    </p>
                                </div>
                            </li>
                            <li class="products__group" data-filter=".hot-coffee"  style="display:none;">
                                <div class="products__item-group">
                                    <h3 class="products__title">Hot coffee</h3>
                                    <p class="products__description">
                                        4 products
                                    </p>
                                </div>
                            </li>
                            <li class="products__group" data-filter=".cold-coffee" style="display:none;">
                                <div class="products__item-group">
                                    <h3 class="products__title">Cold coffee</h3>
                                    <p class="products__description">
                                        2 products
                                    </p>
                                </div>
                            </li>
                            <li class="products__group" data-filter=".cake" style="display:none;">
                                <div class="products__item-group">
                                    <h3 class="products__title">Cakes</h3>
                                    <p class="products__description">
                                        4 products
                                    </p>
                                </div>
                            </li>
                            <li class="products__arrow">
                                <i class="ti-arrow-circle-right"></i>
                            </li>
                        </ul>
                        <!-- Cookies -->
                        <div class="products__content grid">
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/cake1.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Cream Cake</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/delicacies2.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$5</h2>
                                    <h3 class="products__name">Croissant</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/delicacies3.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$3</h2>
                                    <h3 class="products__name">Croissant</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/coffee4.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Moka Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/cake2.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Chocolate Cake</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/cold-coffee.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Chocolated Cream Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/cold-coffee2.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Chocolated Cream Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <!--Hot Coffee -->
                            <div class="products__card delicacies">
                                <div class="products__shape">
                                    <img src="asssets/img/coffee1.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$8</h2>
                                    <h3 class="products__name">Black Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card hot-coffee">
                                <div class="products__shape">
                                    <img src="asssets/img/coffee1.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$5</h2>
                                    <h3 class="products__name">Black Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card hot-coffee">
                                <div class="products__shape">
                                    <img src="asssets/img/coffee2.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Pure Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card hot-coffee">
                                <div class="products__shape">
                                    <img src="asssets/img/coffee3.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Milk Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card hot-coffee">
                                <div class="products__shape">
                                    <img src="asssets/img/coffee4.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Moka Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- Cold Coffee -->
                            <div class="products__card cold-coffee">
                                <div class="products__shape">
                                    <img src="asssets/img/cold-coffee.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Chocolated Cream Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card cold-coffee">
                                <div class="products__shape">
                                    <img src="asssets/img/cold-coffee2.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Chocolated Cream Coffee</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- Cake -->
                            <div class="products__card cake">
                                <div class="products__shape">
                                    <img src="asssets/img/cake1.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Cream Cake</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card cake">
                                <div class="products__shape">
                                    <img src="asssets/img/cake2.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Chocolate Cake</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card cake">
                                <div class="products__shape">
                                    <img src="asssets/img/cake3.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Pancake</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="products__card cake">
                                <div class="products__shape">
                                    <img src="asssets/img/cake4.png" alt="" class="products__img">
                                </div>
                                <div class="products__data">
                                    <h2 class="products__price">$9</h2>
                                    <h3 class="products__name">Milk Cake</h3>
                                    <span class="products__quantity">18 Remaining</span>
                                    <button class="button products__button">
                                        <i class="products_button-icon ti-shopping-cart"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="premium section" id="Premium">
                <div class="premium__container container">
                    <h2 class="section__title" style="color:var(--black-color)">
                        We offer a premium and better quality just for you.
                    </h2>
                    <div class="premium__content grid">
                        <div class="premium__images">
                            <img src="asssets/img/quality1.png" alt="" class="premium__img-big">
                            <img src="asssets/img/quality2.png" alt="" class="premium__img-small">
                        </div>
                        <div class="premium__data">
                            <h1 class="premium__title">Premium Coffee</h1>
                            <h2 class="premium__price">$30.99</h2>
                            <span class="premium__special-text">Especial Price</span>
                            <p class="premium__description">
                                We are delighted with our coffee. That's why we choose your best coffee to service for
                                your
                                best quality that you see in the image, for a special price.
                            </p>
                            <div class="premium__buttons">
                                <button class="premium__button-btn">
                                    Buy Now
                                </button>
                                <a href="#" class="premium__button">
                                    See More
                                    <i class="premium__button-icon ti-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="blog section" id="Blog">
                <div class="blog__container container">
                    <h2 class="section__title" style="color:var(--black-color)">
                        Our Blogs Coffee with trending top for this week.
                    </h2>
                    <div class="blog__content">
                        <div class="blog__card">
                            <div class="blog__image">
                                <img src="asssets/img/blog1.png" alt="" class="blog__img">
                                <a href="#" class="blog__button">
                                    <i class="blog__button-icon ti-arrow-circle-right"></i>
                                </a>
                            </div>
                            <div class="blog__data">
                                <h2 class="blog__title">
                                    10 Coffee Remcommendations
                                </h2>
                                <p class="blog__description">
                                    The blogs about coffee will help you a lot about how it is prepared, its waiting
                                    time,
                                    for a good quality coffee.
                                </p>
                                <div class="blog__footer">
                                    <div class="blog__reaction">
                                        <i class="blog__reaction-icon center-align ti-comment"></i>
                                        <span class="blog__reaction-number">12</span>
                                    </div>
                                    <div class="blog__reaction">
                                        <i class="blog__reaction-icon ti-eye"></i>
                                        <span class="blog__reaction-number">75K</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="blog__card">
                            <div class="blog__image">
                                <img src="asssets/img/blog2.png" alt="" class="blog__img">
                                <a href="#" class="blog__button">
                                    <i class="blog__button-icon ti-arrow-circle-right"></i>
                                </a>
                            </div>
                            <div class="blog__data">
                                <h2 class="blog__title">
                                    12 Coffee Remcommendations
                                </h2>
                                <p class="blog__description">
                                    The blogs about coffee will help you a lot about how it is prepared, its waiting
                                    time,
                                    for a good quality coffee.
                                </p>
                                <div class="blog__footer">
                                    <div class="blog__reaction">
                                        <i class="blog__reaction-icon center-align ti-comment"></i>
                                        <span class="blog__reaction-number">35</span>
                                    </div>
                                    <div class="blog__reaction">
                                        <i class="blog__reaction-icon ti-eye"></i>
                                        <span class="blog__reaction-number">20K</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="blog__credit">
                        <h2 class="blog__title-credit">Special thanks to everyone who support us</h2>
                        <div class="blog__group">
                            <div class="blog__data">
                                <a href="#" class="blog__credit-link">
                                    <img src="asssets/img/logocoffee1.png" alt="" class="blog__credit-img">
                                </a>
                            </div>
                            <div class="blog__data">
                                <a href="#" class="blog__credit-link">
                                    <img src="asssets/img/logocoffee2.png" alt="" class="blog__credit-img">
                                </a>
                            </div>
                            <div class="blog__data">
                                <a href="#" class="blog__credit-link">
                                    <img src="asssets/img/logocoffee3.png" alt="" class="blog__credit-img">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <footer class="footer">
            <div class="footer_container container">
                <div class="footer__box">
                    <h1 class="footer__title">COFFIE</h1>
                    <div class="footer__content grid">
                        <div class="footer__data">
                            <p class="footer__description">
                                Subcribe to our newsletter
                            </p>
                            <div class="footer__newsletter">
                                <input type="email" placeholder="Your email address" class="footer__input">
                                <button class="footer__button">
                                    <i class="footer__button-icon ti-arrow-circle-right"></i>
                                </button>
                            </div>
                        </div>
                        <div class="footer__data">
                            <h2 class="footer__subtitle">
                                Address
                            </h2>
                            <p class="footer__information">
                                9765 Hachidenia Sr. <br>
                                Lima, La Liberian 123, Scotland
                            </p>
                        </div>
                        <div class="footer__data">
                            <h2 class="footer__subtitle">
                                Contact
                            </h2>
                            <p class="footer__information">
                                +987654321<br>
                                coffie@gmail.com
                            </p>
                        </div>
                        <div class="footer__data">
                            <h2 class="footer__subtitle">
                                Office
                            </h2>
                            <p class="footer__information">
                                Monday - Satruday <br>
                                9AM - 10PM
                            </p>
                        </div>
                    </div>
                    <div class="footer__group">
                        <div class="footer__social">
                            <a href="#" class="footer__social-link">
                                <ti class="footer__social-link-icon ti-facebook"></ti>
                            </a>
                            <a href="#" class="footer__social-link">
                                <ti class="footer__social-link-icon ti-instagram"></ti>
                            </a>
                            <a href="#" class="footer__social-link">
                                <ti class="footer__social-link-icon ti-twitter"></ti>
                            </a>
                        </div>
                        <span class="footer__copy">
                            @ PhongNguyen. All rights reserved
                        </span>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="asssets/js/mixitup.min.js"></script>
    <script src="asssets/js/main.js"></script>
</body>

</html>