<%@page import="rateit.entities.Customer"%>
<!-- <%@page contentType="text/html" pageEncoding="UTF-8" %> -->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Rate it | Home Page</title>
        <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
        <!-- <link rel="stylesheet" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" href="" crossorigin="anonymous"> -->

        <style>
            @import url('https://fonts.googleapis.com/css2?family=Unbounded:wght@300&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Unbounded', cursive;
            }


            :root {
                --header-color: black;
                --contain-color: #a3acada6;
                --footer-color: black;
                --search-logo-left: 750px;
            }

            nav {
                height: 8vh;
                width: 100%;
                background-color: var(--header-color);
                display: flex;
                align-items: center;
                border-bottom: 2px solid black;
                margin-bottom: 5px;
                box-shadow: 0px 5.3px 10px #888888;
                position: fixed;
                top: 0px;
                z-index: 1;
            }

            nav div {
                display: flex;
            }

            .main_logo {
                height: 30px;
                width: 100px;
                float: left;
                margin-left: 10px;
            }

            nav ul li {
                display: inline-block;
                text-decoration: none;
                padding-left: 25px;
            }

            nav ul li a {
                text-decoration: none;
                color: black;
            }

            .dropdown {
                position: relative;
                display: inline-block;
                margin-left: 50px;
            }

            .dropdown-text {
                color: white;
            }

            .dropdown-text:hover {
                color: rgb(237, 75, 75);
            }

            .dropdown-content {
                display: none;
                height: 16vh;
                width: 9vw;
                position: absolute;
                left: -7px;
                background-color: black;
                z-index: 1;
                padding-left: 7px;
                padding-top: 10px;
                margin-top: 0.2vh;
                border-radius: 5px;
            }

            .dropdown-content a {
                font-size: 11px;
                font-weight: 3000;
                color: white;
            }

            .dropdown-content a:hover {
                color: rgb(237, 75, 75);
            }

            .dropdown-text:hover .dropdown-content {
                display: block;
                background-color: black;
            }

            .nav-content {
                display: none;
            }

            .header-content {
                color: white;
                font-size: 14px;
                cursor: pointer;
            }

            .header-content:hover {
                color: rgb(237, 75, 75);
            }

            #search-logo {
                z-index: 1;
                position: absolute;
                top: 6px;
                left: 880px;
                height: 30px;
                width: 30px;
                background-color: black;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                transition-property: left;
                transition-timing-function: linear;
                transition-duration: 0.3s;
            }

            #search-logo i {
                color: white;
            }

            #search input {
                z-index: 0;
                border-radius: 0px;
                background-color: black;
                height: 25px;
                margin-left: 70px;
                padding: 10px;
                border-bottom: 1.5px solid white;
                color: white;
                border-top-style: hidden;
                border-left-style: hidden;
                border-right-style: hidden;
                opacity: 0;
                transition-property: opacity;
                transition-timing-function: linear;
                transition-delay: 0.5s;
                transition-duration: 0.3s;
            }

            #search input:focus {
                outline: none;
            }

            .header-btn {
                height: 28px;
                width: 140px;
                background: transparent;
                border: none;
                border-radius: 3px;
                transition: all 0.3s;
                margin-left: 70px;
                background-color: rgb(237, 75, 75);
                color: white;
            }

            .header-btn:hover {
                transform: scale(1.03);
                color: white;
                border: none;
            }

            #checkbox {
                display: none;
            }

            .check {
                color: white;
                font-size: 25px;
                float: left;
                margin-left: 10px;
                cursor: pointer;
                display: none;
            }



            footer {
                height: 100%;
                width: 100%;
                background-color: var(--footer-color);
                padding: 5px;
                display: flex;
                flex-direction: column;
            }

            #footpart3 {
                color: white;
                font-size: 13px;
                margin-top: 40px;
                display: inline-block;
            }

            #footpart3 dl dd {
                margin: 5px 0px;
            }

            #footpart3 a {
                text-decoration: none;
                color: grey;
                font-size: 12px;
            }

            #footpart3 a:hover {
                color: white;
            }

            #footpart2 {
                margin-top: 30px;
                margin-left: 30px;
                display: flex;
            }

            #cont1 {
                color: white;
                font-size: 13px;
            }

            #cont1 p {
                margin-bottom: 10px;
            }

            .about-text {
                color: grey;
                text-decoration: none;
                font-size: 11px;
            }

            .about-text:hover {
                color: white;
            }

            .cont2 {
                color: white;
                font-size: 13px;
                margin-left: 100px;
            }

            .cont2 p {
                margin-bottom: 10px;
            }

            #cont5 {
                margin-left: 25vw;
                font-size: 13px;
                color: white;
            }

            #cont5 p {
                margin-bottom: 10px;
            }

            #footpart1 {
                margin-left: 0px;
                margin-top: 5px;
                padding-bottom: 5px;
                border-bottom: 1.5px solid white;
                display: flex;
            }

            #footpart1 p {
                color: white;
                font-size: 13px;
                margin-right: 85px;
                padding-bottom: 5px;
                margin-left: 85px;
                letter-spacing: 0.5px;
            }

            #social {
                display: flex;
            }

            #social a img {
                margin-left: 5px;
                height: 37px;
                transition: all 0.3s;
            }

            #social a img:hover {
                transform: scale(1.07);
            }

            #header_button1{
                margin-left: 0px;
                position: relative;
                left:-40px; top: 17px;
                background-color: rgb(237, 75, 75);
            }

            /*------- Main page styling ---------*/
            body {
                background-color: #a3acada6;
            }

            main {
                margin-top: 15vh;
            }

            .container {
                display: grid;
                background-color: #a3acad1a;
                width: 90vw;
                margin-left: 5vw;
                grid-template-columns: 1fr 1fr;
                grid-gap: 30px;
                box-sizing: border-box;
                margin-bottom: 45px;
            }

            .items {
                background-color: white;
                height: 14vw;
                width: 100%;
                position: relative;
                border-radius: 3px;
                width: 100%;
                padding-top: 5px;
                padding-left: 5px;
            }


            .company_name {
                text-align: center;
                color: rgba(63, 58, 58, 0.792);
                font-size: 15px;
                font-weight: 1000;
                margin-top: 5px;
            }

            .company1 {
                float: left;
            }

            .company2 {
                float: right;
            }

            .company1,
            .company2 {
                display: flex;
                flex-direction: column;
                justify-content: center;
                height: 95%;
                width: 40%;
                position: relative;
                border-radius: 5px;
                ;
            }

            section {
                display: inline-block;
            }

            .vs {
                position: absolute;
                left: 47%;
                top: 20%;
                font-size: 25px;
            }

            .logoContainer {
                height: 30%;
                display: flex;
                justify-content: center;
            }

            .star-1,
            .star-2 {
                height: 60%;
                padding-top: 23px;
                padding-left: 15px;
            }

            .btn {
                height: 30px;
                width: 130px;
                border: none;
                background-color: rgb(237, 75, 75);
                color: white;
                position: absolute;
                top: 75%;
                left: 39%;
                border-radius: 3px;
                font-size: 13px;
            }

            .label {
                color: black;
                font-weight: bold;
            }

            .fa-solid {
                color: black;
            }

            /* main page styling completes here */

            @media (min-width: 1200px) and (max-width:1330px) {
                #search input {
                    margin-left: 80px;
                    width: 225px;
                }

                #button {
                    margin-left: 90px;
                }

            }

            @media (min-width: 1100px) and (max-width:1200px) {
                #search input {
                    margin-left: 60px;
                }

                #search-logo {
                    position: absolute;
                    left: 650px;
                }

                .header-btn {
                    margin-left: 80px;
                }

                .dropdown {
                    margin-left: 25px;
                }

                nav ul li {
                    padding-left: 15px;
                }
            }

            @media (min-width: 600px) and (max-width: 800px) {

                main {
                    margin-top: 20vh;
                }

                .check {
                    display: block;
                }

                .check i {
                    font-size: 27px;
                }

                nav {
                    flex-direction: column;
                    height: 100px;
                }

                nav img {
                    margin-top: 10px;
                    margin-bottom: 10px;
                }

                nav ul {
                    display: flex;
                    position: fixed;
                    width: 300px;
                    height: 390px;
                    text-align: center;
                    background-color: black;
                    top: 8vh;
                    left: 0px;
                    flex-direction: column;
                    box-sizing: border-box;
                    margin-top: 30px;
                    left: -100%;
                }

                .dropdown {
                    margin-left: 0px;
                }

                .dropdown-text {
                    display: none;
                    padding-left: 0px;
                }

                .nav-content {
                    display: block;
                    margin-top: 65px;
                    position: relative;
                    text-align: center;
                    left: 00px;
                }

                .nav-content a {
                    display: block;
                    color: white;
                    font-size: 15px;
                    font-weight: 900;
                    padding-top: 15px;
                    letter-spacing: 1px;
                }

                .nav-content a:hover {
                    color: rgb(237, 75, 75);
                }

                .header-content {
                    font-weight: 900;
                    display: inline-block;
                    text-decoration: none;
                    padding-top: 15px;
                    letter-spacing: 1px;
                    font-size: 15px;
                }

                #search-logo {
                    display: none;
                }

                #search {
                    position: relative;
                    top: 9vh;
                    /* left:-85px;  this pixel is used when the three horizotal lines will click*/
                    left: -100%;
                }

                #search input {
                    background-color: black;
                    color: white;
                    opacity: 1;
                    height: 30px;
                    width: 200px;
                    border: 2px solid white;
                    border-radius: 20px;
                }

                #checkbox:checked~ul {
                    left: -3%;
                }

                #checkbox:checked~#search {
                    left: -150px;
                }

                .main_logo {
                    margin-left: 20px;
                }
            }

            @media (min-width: 400px) and (max-width: 600px) {
                .check {
                    display: block;
                }

                .check i {
                    font-size: 27px;
                }

                nav {
                    flex-direction: column;
                    height: 90px;
                }

                nav img {
                    margin-top: 10px;
                    margin-bottom: 10px;
                }

                nav ul {
                    display: flex;
                    position: fixed;
                    width: 250px;
                    height: 350px;
                    text-align: center;
                    background-color: black;
                    top: 8vh;
                    left: 0px;
                    flex-direction: column;
                    box-sizing: border-box;
                    margin-top: 30px;
                    left: -100%;
                }

                .dropdown {
                    margin-left: 0px;
                }

                .dropdown-text {
                    display: none;
                    padding-left: 0px;
                }

                .nav-content {
                    display: block;
                    margin-top: 60px;
                    position: relative;
                    text-align: center;
                    left: 0px;
                }

                .nav-content a {
                    display: block;
                    color: white;
                    font-size: 12px;
                    font-weight: 900;
                    padding-top: 15px;
                    letter-spacing: 1px;
                }

                .nav-content a:hover {
                    color: rgb(237, 75, 75);
                }

                .header-content {
                    font-weight: 900;
                    display: inline-block;
                    text-decoration: none;
                    padding-top: 15px;
                    letter-spacing: 1px;
                    font-size: 12px;
                }

                #search-logo {
                    display: none;
                }

                #search {
                    position: relative;
                    top: 9vh;
                    /* left:-85px;  this pixel is used when the three horizotal lines will click*/
                    left: -100%;
                }

                #search input {
                    background-color: black;
                    color: white;
                    opacity: 1;
                    height: 30px;
                    width: 170px;
                    border: 2px solid white;
                    border-radius: 20px;
                }

                #checkbox:checked~ul {
                    left: -3%;
                }

                #checkbox:checked~#search {
                    left: -100px;
                }

                .main_logo {
                    margin-left: 20px;
                }
            }

            @media (min-width: 200px) and (max-width: 400px) {
                .check {
                    display: block;
                }

                .check i {
                    font-size: 27px;
                }

                nav {
                    flex-direction: column;
                    height: 90px;
                }

                nav img {
                    margin-top: 10px;
                    margin-bottom: 10px;
                }

                nav ul {
                    display: flex;
                    position: fixed;
                    width: 220px;
                    height: 320px;
                    text-align: center;
                    background-color: black;
                    top: 8vh;
                    left: 0px;
                    flex-direction: column;
                    box-sizing: border-box;
                    margin-top: 30px;
                    left: -100%;
                }

                .dropdown {
                    margin-left: 0px;
                }

                .dropdown-text {
                    display: none;
                    padding-left: 0px;
                }

                .nav-content {
                    display: block;
                    margin-top: 55px;
                    position: relative;
                    text-align: center;
                    left: 00px;
                }

                .nav-content a {
                    display: block;
                    color: white;
                    font-size: 10px;
                    font-weight: 900;
                    padding-top: 15px;
                    letter-spacing: 1px;
                }

                .nav-content a:hover {
                    color: rgb(237, 75, 75);
                }

                .header-content {
                    font-weight: 900;
                    display: inline-block;
                    text-decoration: none;
                    padding-top: 15px;
                    letter-spacing: 1px;
                    font-size: 10px;
                }

                #search-logo {
                    display: none;
                }

                #search {
                    position: relative;
                    top: 9vh;
                    /* left:-85px;  this pixel is used when the three horizotal lines will click*/
                    left: -100%;
                }

                #search input {
                    background-color: black;
                    color: white;
                    opacity: 1;
                    height: 30px;
                    width: 150px;
                    border: 2px solid white;
                    border-radius: 20px;
                }

                #checkbox:checked~ul {
                    left: -3%;
                }

                #checkbox:checked~#search {
                    left: -30px;
                }

                .main_logo {
                    margin-left: 20px;
                }
            }

            #profile_div {
                position: fixed;
                top: 10%;
                left: 35%;
                height: auto;
                width: auto;
                z-index: 2;
                display: none;
            }
        </style>

        <style id="styles"></style>
    </head>

    <body>
        <%
            Customer customer = (Customer) session.getAttribute("Customer");

        %>
        <header>
            <nav>
                <img class="main_logo" src="" alt="RATE-IT.COM">

                <div>
                    <input type="checkbox" name="" value="" id="checkbox">
                    <label for="checkbox" class="check">
                        <i class="fas fa-bars"></i>
                    </label>
                    <ul id="navTool">
                        <div class="dropdown">
                            <li>
                                <div class="dropdown-text ">
                                    <b>Polls</b>
                                    <div class="dropdown-content">
                                        <a href="#">Previous Polls</a>
                                        <a href="recent_poll_page.jsp">Recent Polls</a>
                                        <a href="">Upcoming Polls</a>
                                        <br>
                                        <a href="#">Reminder Polls</a>
                                    </div>
                                </div>
                                <div class="nav-content">
                                    <a href="#">Previous Polls</a>
                                    <a href="#">Recent Polls</a>
                                    <a href="#">Upcoming Polls</a>
                                    <a href="#">Reminder Polls</a>
                                </div>
                            </li>
                        </div>

                        <li><a href="#" class="header-content"><b>Rank Status</b></a></li>
                        <li><a href="#" class="header-content"><b>Companies</b></a></li>
                        <li><a href="about_us_page.jsp" class="header-content"><b>About Us</b></a></li>
                        <li><a href="contact_us.jsp" class="header-content"><b>Contact Us</b></a></li>
                        <li><a href="#" class="header-content"><b>Review Us</b></a></li>
                    </ul>

                    <div id="search-logo"><i class="fa-solid fa-magnifying-glass"></i></div>
                    <div id="search">
                        <input type="search" placeholder="Search . . . .">
                    </div>

                </div>
                <%if (customer == null) {%>
                <a href="LogIn&SignUp.jsp"> <button class="header-btn" id="header_button" onclick=""><b>&nbsp;Log In
                            &nbsp;/&nbsp;
                            Sign Up&nbsp;</b></button></a>

                <%}else{%>
                                              
                <button id="profile_btn" class="header-btn"><%=customer.getUSER_NAME() %></button>
              
               
                
                <%}%>

            </nav>
        </header>


        <main>
            <div class="container">

                <div class="items item1">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                                 class="logo" id="l1" style="height: 25px; width: 30px; margin-top: 5px;">
                        </div>
                        <p class="company_name">Tata consultancy Service</p>
                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>

                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/infosys.png?raw=true"
                                 class="logo" id="l2" style="height: 50px; width: 55px;">
                        </div>
                        <p class="company_name">Infosys</p>
                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>
                <!-- Ratings and star code completes -->

                <div class="items item2">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                                 class="logo" id="l1" style="height: 40px; width: 50px; margin-top: 5px;">
                        </div>
                        <p class="company_name">Amazon</p>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/flipkart.png?raw=true"
                                 class="logo" id="l2" style="height: 33px; width: 40px; margin-top: 7px;">
                        </div>
                        <p class="company_name">Flipkart</p>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>
                <!-- Ratings and star code completes -->

                <div class="items item3">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/facebook.png?raw=true"
                                 class="logo" id="l1" style="height: 50px; width: 50px; margin-top: 5px;">
                        </div>
                        <p class="company_name" style="margin-top:10px;">Facebook</p>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/instagram.png?raw=true"
                                 class="logo" id="l2" style="height: 50px; width: 50px; margin-top: 5px;">
                        </div>
                        <p class="company_name" style="margin-top:10px;">instagram</p>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>
                <!-- Ratings and star code completes -->

                <div class="items item4">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/gpay.png?raw=true"
                                 class="logo" id="l1" style="height: 43px; width: 50px; margin-top: 5px;">
                        </div>
                        <p class="company_name">Google Pay</p>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/paytm.png?raw=true"
                                 class="logo" id="l2" style="height: 55px; width: 60px; margin-top: 0px;">
                        </div>
                        <p class="company_name">Paytm</p>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>
                <!-- Ratings and star code -->

                <div class="items item5">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/swiggy.png?raw=true"
                                 class="logo" id="l1" style="height: 45px; width: 50px; margin-top: 5px;">
                        </div>
                        <p class="company_name">Swiggy</p>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/zomato.png?raw=true"
                                 class="logo" id="l2" style="height: 40px; width: 45px; margin-top: 10px;">
                        </div>
                        <p class="company_name">Zomato</p>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>
                <!-- Ratings and star code -->

                <div class="items item6">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/fastrack.png?raw=true"
                                 class="logo" id="l1" style="height: 75px; width: 60px; margin-top: -5px;">
                        </div>
                        <p class="company_name">Fastrack</p>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/titan.png?raw=true"
                                 class="logo" id="l2" style="height: 30px; width: 35px; margin-top: 12px;">
                        </div>
                        <p class="company_name">Titan</p>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>

                <div class="items item1">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/honda.png?raw=true"
                                 class="logo" id="l1" style="height: 45px; width: 40px; margin-top: 5px;">
                        </div>
                        <p class="company_name">Honda</p>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/yamaha.png?raw=true"
                                 class="logo" id="l2" style="height: 40px; width: 40px; margin-top: 5px;">
                        </div>
                        <p class="company_name">Yamaha</p>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>

                <div class="items item1">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/pepsi.png?raw=true"
                                 class="logo" id="l1" style="height: 45px; width: 45px; margin-top: 0px;">
                        </div>
                        <p class="company_name">Pepsi</p>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/sprite.png?raw=true"
                                 class="logo" id="l2" style="height: 50px; width: 50px; margin-top: 0px;">
                        </div>
                        <p class="company_name">Sprite</p>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <button class="btn">Compare Now</button>

                </div>
                <!-- <div class="items item7">
              < !-- Ratings and star code -->
            </div>
        </main>


        <footer>

            <div id="footpart1">
                <p id="tgp">Total Generated polls:- 50,332</p>
                <p id="trc">Total Registered Companies:- 2,54,574</p>
                <p id="tlu">Total Logined Users:- 65,64,732</p>
            </div>

            <div id="footpart2">

                <div id="cont1">
                    <p>Useful Links</p>
                    <dd><a href="" class="about-text">previous Polls</a></dd>
                    <dd><a href="" class="about-text">recent Polls</a></dd>
                    <dd><a href="" class="about-text">Up-Coming Polls</a></dd>
                    <dd><a href="" class="about-text">Tranding Polls</a></dd>
                    <dd><a href="" class="about-text">Companies</a></dd>
                    <dd><a href="" class="about-text">My Profile</a></dd>
                    <dd><a href="" class="about-text">About</a></dd>
                    <dd><a href="" class="about-text">Blog</a></dd>
                </div>

                <div class="cont2">
                    <p>Rate It</p>
                    <dd><a href="" class="about-text">Feedback</a></dd>
                    <dd><a href="" class="about-text">Contact Us</a></dd>
                    <dd><a href="" class="about-text">Rate It for Employers</a></dd>
                </div>

                <div class="cont2">
                    <p>Rete It Developers</p>
                    <dd class="about-text">Vinay Koshti</dd>
                    <dd class="about-text">Neesarg Soni</dd>
                    <dd class="about-text">Dilip suryal</dd>
                    <dd class="about-text">Priyanshu Patel</dd>
                    <dd class="about-text">Nirmal Prajapati</dd>
                    <dd class="about-text">Dhruv Shere</dd>
                </div>

                <div class="cont2">
                    <p>Help Center</p>
                    <dd><a href="" class="about-text">FAQ</a></dd>
                    <dd><a href="" class="about-text">Terms of Use</a></dd>
                    <dd><a href="" class="about-text">Privecy & Cookies</a></dd>
                </div>

                <div id="cont5">
                    <p>Follaw Us On</p>
                    <div id="social">
                        <div>
                            <dd><a href="https://www.facebook.com/profile.php?id=100088785978857"><img
                                        src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/facebook.png?raw=true"></a>
                            </dd>
                            <dd><a href="https://www.instagram.com/rateit_group/"><img
                                        src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/instagram.png?raw=true"></a>
                            </dd>
                        </div>
                        <div>
                            <dd><a href="https://twitter.com/rateit16"><img
                                        src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/twitter.png?raw=true"></a>
                            </dd>
                            <dd><a href="https://www.linkedin.com/in/rate-it-76513b263/"><img
                                        src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/linkedin.png?raw=true"></a>
                            </dd>

                            <dd>
                                <a href="comp_login.jsp"> <button class="header-btn" id="header_button1" onclick=""><b>&nbsp;Log In
                                &nbsp;/&nbsp;
                                Sign Up&nbsp;</b></button></a>
                            </dd>
                        </div>
                    </div>
                </div>
            </div>

            <div id="footpart3">
                <dl>
                    <dt>TOP RATED COMPANIES:</dt>
                    <dd><a href="">TATA Motors</a>
                        <a href="">Infosys</a> |
                        <a href="">Facebook</a> |
                        <a href="">Jobbuzz</a> |
                        <a href="">Adani Gas</a> |
                        <a href="">Reliance Digital</a> |
                        <a href="">Google</a> |
                        <a href="">Lenskart</a> |
                        <a href="">Bharat Pay</a> |
                        <a href="">Flipkart</a> |
                        <a href="">Amazon</a> |
                        <a href="">Raymond</a> |
                        <a href="">IBM</a> |
                        <a href="">Maruti Suzuki</a> |
                        <a href="">ICICI Bank</a> |
                        <a href="">Axis Bank</a>|
                        <a href="">Wipro</a> |
                        <a href="">Ultratach Cement</a> |
                        <a href="">Ambuja Cement</a> |
                        <a href="">Cipla</a> |
                        <a href="">Oracle</a> |
                        <a href="">Kotak Bank</a> |
                        <a href="">Mahindra Motors</a> |
                        <a href="">PayPal</a> |
                        <a href="">Yamaha</a> |
                        <a href="">Microsoft</a> |
                        <a href="">Kent</a> |
                    </dd>
                </dl>
            </div>
        </footer>

        <div>
            <div id="profile_div"></div>
        </div>


        <script type="text/javascript">
            let searchlogo = 750;

//            window.addEventListener("DOMContentLoaded", () => {
//
//                sessionStorage.setItem("RateitLOGGEDIN", "true")
//                if (sessionStorage.getItem("RateitLOGGEDIN") == "true") {
//                    searchlogo = 1040;
//                    document.getElementById("header_button").style.display = "none";
//                    document.getElementById("search").style.marginLeft = "80px";
//                    document.getElementById("navTool").style.marginLeft = "220px";
//                    document.getElementById("search-logo").style.position = "absolute";
//                    document.getElementById("search-logo").style.left = searchlogo + "px";
//                }
//            })

            const searchLogo = document.getElementById("search-logo");

            const profileBtn = document.getElementById("profile_btn");

            profileBtn.addEventListener("click", () => {
                document.querySelector(".container").style.opacity = "0.2";
                document.getElementById("profile_div").style.display = "block";
            })


            // console.log(profileClose)
            function closeProfile() {
                document.querySelector(".container").style.opacity = "1";
                document.getElementById("profile_div").style.display = "none";
            }

            function saveProfile(e) {
                let arr = document.getElementsByClassName("profile_input");
                // console.log(arr);
                for (var i = 0; i < arr.length; i++) {
                    arr[i].setAttribute("disabled", "true");
                    // console.log(arr[i])
                }
                document.getElementById("save_btn").style.display = "none";
            }

            function editProfile() {
                let arr = document.getElementsByClassName("editable");
                // console.log(arr);
                document.getElementById("save_btn").style.display = "block"
                for (var i = 0; i < arr.length; i++) {
                    arr[i].removeAttribute("disabled");
                    // console.log(arr[i])
                }
            }

            searchLogo.addEventListener("click", () => {
                document.getElementById("search-logo").style.left = searchlogo + 320 + "px";
                document.querySelector("#search input").style.opacity = "1";
            })

        </script>

            <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                $("#profile_btn").click(function(){
                    console.log("working")   
                $("#profile_div").load("profile.jsp");
                });
            
            });
        </script>
    </body>

</html>