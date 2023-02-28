<%@page import="rateit.entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Rate it | Home Page</title>
        <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Unbounded:wght@300&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Unbounded', cursive;
            }
            .profileBtn{
                background-color: transparent;
                color:white;
            }

            :root {
                --header-color: white;
                --contain-color: #a3acada6;
                --footer-color: black;
                --search-logo-left : 750px;
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
                top:0px;
                z-index: 1;
            }

            .main_logo {
                height: 45px;
                width: 60px;
                margin-left: 10px;
                transition: all 0.3s;
            }

            .main_logo:hover {
                transform: scale(1.05);
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

            .dropdown-content {
                display: none;
                height: 12vh;
                width: 8vw;
                position: absolute;
                left: 0px;
                background-color: var(--header-color);
                z-index: 1;
                padding-left: 7px;
                padding-top: 10px;
                margin-top: 0.2vh;
                border-radius: 5px;
            }

            .dropdown-content a {
                font-size: 11px;
                font-weight: 3000;
                color: black;
            }

            .dropdown-content a:hover {
                color: #ffad06;
            }

            .dropdown-text:hover .dropdown-content {
                display: block;
                background-color: white;
            }

            .header-content {
                color: black;
                font-size: 14px;
                cursor: pointer;
            }

            .header-content:hover {
                color: #ffad06;
                transition: 0.3s;
            }

            #search-logo{
                z-index: 1;
                position: absolute;
                top:8px;
                left: 750px; /* 720,970*/
                height: 30px;
                width: 30px;
                background-color: black;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                transition-property: left;
                transition-timing-function: linear;
                transition-duration: 1s;
            }
            #search input {
                z-index: 0;
                border-radius: 0px;
                height: 25px;
                margin-left: 120px;
                padding: 10px;
                border-bottom: 1.5px solid black;
                border-top-style: hidden;
                border-left-style: hidden;
                border-right-style: hidden;
                opacity: 0;
                transition-property: opacity;
                transition-timing-function: linear;
                transition-delay: 0.5s;
                transition-duration: 0.8s;
            }
            #search input:focus{
                outline: none;
            }

            #button {
                margin-left: 180px;
            }

            .header-btn {
                height: 28px;
                width: 140px;
                background: transparent;
                border-radius: 3px;
                transition: all 0.3s;
                /* margin: 2px; */
                background-color: black;
                color: white;
                box-shadow: 2px 2px 6px #888888;
            }

            /* .btn:hover {
                transform: scale(1.03);
                background-color: black;
                color: white;
                border: none;
            } */


            /*       .container {
                       min-height: calc(100vh - 10vh - 54vh);
                       width: 100%;
                       background-color: var(--contain-color);
                   }*/

            footer {
                height: 60vh;
                width: 100%;
                background-color: var(--footer-color);
                padding: 5px;
            }

            #footpart3 {
                color: white;
                font-size: 13px;
                margin-top: 40px;
                display: inline-block;
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

            #cont2 {
                color: white;
                font-size: 13px;
                margin-left: 100px;
            }

            #cont2 p {
                margin-bottom: 10px;
            }

            #cont3 {
                color: white;
                font-size: 13px;
                margin-left: 100px;
            }

            #cont3 p {
                margin-bottom: 10px;
            }

            #cont4 {
                margin-left: 100px;
                font-size: 13px;
                color: white;
            }

            #cont4 p {
                margin-bottom: 10px;
            }

            #cont5 {
                margin-left: 15vw;
                font-size: 13px;
                color: white;
            }

            #cont5 p {
                margin-bottom: 10px;
            }

            #footpart1 {
                margin-left: 0px;
                margin-top: 5px;
                display: flex;
                padding-bottom: 5px;
                /* outline-offset: 4px;
                outline-style: solid;
                outline-color: white;
                outline-width: 1.5px; */
                border-bottom: 1.5px solid white;

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

            /*------- Main page styling ---------*/
            body{
                background-color: #a3acada6;
            }
            main{
                margin-top: 15vh;
            }
            .container {
                display: grid;
                background-color:#a3acad1a;
                width: 90vw;
                margin-left: 5vw;
                grid-template-columns: 1fr 1fr;
                grid-gap: 30px;
                box-sizing: border-box;
                margin-bottom: 45px;
            }

            .items {
                background-color: white;
                height: 15vw;
                width:100%;
                position: relative;
                border-radius: 3px;
            }


            /* CODE BY NOOB VINAY */
            .items{
                width:100%;
                padding:10px;

            }
            .company1{
                float: left;
                background-color: rgb(139, 210, 57);
            }

            .company2{
                float: right;
                background-color:rgba(50, 206, 193, 0.677);
            }
            .company1,.company2{
                display: flex;
                flex-direction: column;
                justify-content: center;
                height:95%;
                width:40%;
                position: relative;
                border-radius: 5px;
                ;
            }

            section{
                display: inline-block;
            }
            .vs{
                position: absolute;
                left:44.8%;
                top:30%;
                width:18%;
            }
            .logoContainer{
                height:40%;
                display: flex;
                justify-content: center;

            }
            /* .logo{
                height:50px;
                width:50px;
            } */
            .star-1,.star-2{
                height:60%;
                padding-top:30px;
                padding-left: 39px;
            }
            .btn {
                height: 30px;
                width: 90px;
                background-color: black;
                color: white;
                position: absolute;
                left:41.8%;
                top:77.5%;
                border-radius: 5px;
                font-family: 'Nunito', sans-serif;
                font-size: 15px;
            }
            .label {
                color: black;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                font-weight: bold;
                /* position: absolute;
                top: 40px; */
            }
            .fa-solid{
                color: white;
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
                    margin-left: 75px;
                }

                #button {
                    margin-left: 100px;
                }

                .dropdown {
                    margin-left: 15px;
                }

                nav ul li {
                    padding-left: 15px;
                }
            }

            
            
            .modalBtn{
                width:170px;
                height:30px;
                position:absolute;
                top:10px; left:1000px;
            }
            .modal-footer .btn{
               
                position:relative;
                width:auto;
                height:30px;
                padding-bottom:10px;
                left:-120px;
                background: red;
            }
            table{
                height:100%;
                width:100%;
            }
            table tr{
                border:1px solid black;
            }
         
            .img{
                height:120px;
                width: 100%;
            }
            .img img{
                border-radius: 50%; 
                position: relative;
                left: 80%;
            }
            .t1{
                width: 50%;
                text-align: center;
            }
            .t2{
                width: 50%;
               text-align: center;
            }
            
        </style>
    </head>

    <body>
        <%
                                 Customer customer = (Customer)session.getAttribute("Customer");
                                 if(customer == null){
response.sendRedirect("LogIn&SignUp.jsp");
            
            }

                                 %>
        <header>
            <nav>
                <img class="main_logo" src="https://raw.githubusercontent.com/GP-GANG/rateit.github.io/main/Other%20Files/photos/logo.png" alt="RATE-IT.COM">
                <ul id="navTool">
                    <div class="dropdown">
                        <li>
                            <div class="dropdown-text header-content">
                                <b>Polls</b>
                                <div class="dropdown-content">
                                    <a href="#">Previous Polls</a>
                                    <a href="#">Recent Polls</a>
                                    <a href="#">Upcoming Polls</a>
                                </div>
                            </div>
                        </li>
                    </div> &nbsp;

                    <li><a href="#" class="header-content"><b>Companies</b></a></li>
                    <li><a href="#" class="header-content"><b>About Us</b></a></li>
                    <li><a href="#" class="header-content"><b>Contact Us</b></a></li>
                    <li><a href="#" class="header-content"><b>Review Us</b></a></li>
                </ul>

                <div id="search-logo"><i class="fa-solid fa-magnifying-glass"></i></div>
                <div id="search">
                    <input type="search" placeholder="Search . . . .">
                </div>

                <div id="button" >
                    <button type="button" class="btn btn-primary modalBtn" data-toggle="modal" data-target="#profilemodal">
                       <%=customer.getUSER_NAME() %>
                    </button>
                    
                    <a href="LogIn&SignUp.jsp" > <button class="header-btn" onclick=""><b>&nbsp;Log In &nbsp;/&nbsp; Sign Up&nbsp;</b></button></a>
                </div>
            </nav>
        </header>
<!-- Modal -->
<div id="model">
                    <div class="modal fade" id="profilemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">profile details</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                 
                                    <table>
                                        <tr class="img">
                                            <td ><img src="img/tiger.jpeg" height="100px" width="100px"></td>
                                        </tr>
                                        <tr>
                                            <td class="t1">ID:</td>
                                            <td class="t2"> <%=customer.getUSER_ID() %></td>
                                        </tr>
                                        <tr>
                                            <td class="t1">USER_NAME:</td>
                                            <td class="t2"><%=customer.getUSER_NAME() %></td>
                                        </tr>
                                        <tr>
                                            <td class="t1">EMAIL:</td>
                                            <td class="t2"><%=customer.getEMAIL() %></td>
                                        </tr>
                                       
                                        <tr>
                                            <td class="t1">ATTENDED_POLL:</td>
                                            <td class="t2">0</td>
                                        </tr>
                                        <tr>
                                            <td class="t1">JOIN_DATE:</td>
                                            <td class="t2"><%=customer.getJOIN_DATE().toString() %></td>
                                        </tr>
                                    </table>
                                    
                                    
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                            </div>
                        </div>
                    </div>
    <div>

        <main>
            <div class="container">

                <div class="items item1">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                                 class="logo" id="l1" style="height: 30px; width: 40px; margin-top: 5px;">
                        </div>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <section class="vs">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/VS.png?raw=true" height="60px" width="60px" > <!--class="icon" -->    
                    </section>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/infosys.png?raw=true"
                                 class="logo" id="l2" style="height: 60px; width: 55px; margin-top: 0px;">
                        </div>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section> 

                    <button class="btn">Rate Polls</button>

                </div>
                <!-- Ratings and star code completes -->


                <div class="items item2">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                                 class="logo" id="l1" style="height: 50px; width: 50px; margin-top: 5px;">
                        </div>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <section class="vs">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/VS.png?raw=true" height="60px" width="60px" > <!--class="icon" -->    
                    </section>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/flipkart.png?raw=true"
                                 class="logo" id="l2" style="height: 40px; width: 40px; margin-top: 7px;">
                        </div>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section> 

                    <button class="btn">Rate Polls</button>

                </div>
                <!-- Ratings and star code completes -->

                <div class="items item3">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/facebook.png?raw=true"
                                 class="logo" id="l1" style="height: 50px; width: 50px; margin-top: 5px;">
                        </div>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <section class="vs">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/VS.png?raw=true" height="60px" width="60px" > <!--class="icon" -->    
                    </section>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/instagram.png?raw=true"
                                 class="logo" id="l2" style="height: 50px; width: 50px; margin-top: 5px;">
                        </div>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section> 

                    <button class="btn">Rate Polls</button>

                </div>
                <!-- Ratings and star code completes -->

                <div class="items item4">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/gpay.png?raw=true"
                                 class="logo" id="l1" style="height: 50px; width: 50px; margin-top: 5px;">
                        </div>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <section class="vs">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/VS.png?raw=true" height="60px" width="60px" > <!--class="icon" -->    
                    </section>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/paytm.png?raw=true"
                                 class="logo" id="l2" style="height: 60px; width: 60px; margin-top: 0px;">
                        </div>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section> 

                    <button class="btn">Rate Polls</button>

                </div>
                <!-- Ratings and star code --> 

                <div class="items item5">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/swiggy.png?raw=true"
                                 class="logo" id="l1" style="height: 50px; width: 50px; margin-top: 5px;">
                        </div>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <section class="vs">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/VS.png?raw=true" height="60px" width="60px" > <!--class="icon" -->    
                    </section>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/zomato.png?raw=true"
                                 class="logo" id="l2" style="height: 40px; width: 40px; margin-top: 10px;">
                        </div>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section> 

                    <button class="btn">Rate Polls</button>

                </div>
                <!-- Ratings and star code --> 

                <div class="items item6">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/fastrack.png?raw=true"
                                 class="logo" id="l1" style="height: 60px; width: 60px; margin-top: 0px;">
                        </div>

                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section>

                    <section class="vs">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/VS.png?raw=true" height="60px" width="60px" > <!--class="icon" -->    
                    </section>


                    <section class="company2">
                        <div class="logoContainer">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/titan.png?raw=true"
                                 class="logo" id="l2" style="height: 35px; width: 35px; margin-top: 12px;">
                        </div>

                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                    </section> 

                    <button class="btn">Rate Polls</button>

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

                <div id="cont2">
                    <p>Rate It</p>
                    <dd><a href="" class="about-text">Feedback</a></dd>
                    <dd><a href="" class="about-text">Contact Us</a></dd>
                    <dd><a href="" class="about-text">Rate It for Employers</a></dd>
                </div>

                <div id="cont3">
                    <p>Rete it Developers</p>
                    <dd class="about-text">Vinay Koshti</dd>
                    <dd class="about-text">Neesarg Soni</dd>
                    <dd class="about-text">Dilip Suryal</dd>
                    <dd class="about-text">Priyanshu Patel</dd>
                    <dd class="about-text">Nirmal Prajapati</dd>
                    <dd class="about-text">Dhruv Shere</dd>
                </div>

                <div id="cont4">
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
                                        src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/facebook.png?raw=true"></a></dd>
                            <dd><a href="https://www.instagram.com/rateit_group/"><img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/instagram.png?raw=true"></a></dd>
                        </div>
                        <div>
                            <dd><a href="https://twitter.com/rateit16"><img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/twitter.png?raw=true"></a></dd>
                            <dd><a href="https://www.linkedin.com/in/rate-it-76513b263/"><img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/linkedin.png?raw=true"></a></dd>
                        </div>
                    </div>
                </div>
            </div>

            <div id="footpart3">
                <dl>
                    <dt>TOP RATED COMPANIES:</dt> <br>
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
                        <a href="">Kent</a> |</dd>
                </dl>
            </div>
        </footer>

        <script type="text/javascript">
            let searchlogo = 750;

            window.addEventListener("DOMContentLoaded", () => {

                console.log(sessionStorage.getItem("RateitLOGGEDIN"));

                if (sessionStorage.getItem("RateitLOGGEDIN") == "true") {
                    searchlogo = 1040;
                    document.getElementById("button").style.display = "none";
                    document.getElementById("search").style.marginLeft = "80px";
                    document.getElementById("navTool").style.marginLeft = "220px";
                    document.getElementById("search-logo").style.position = "absolute";
                    document.getElementById("search-logo").style.left = searchlogo + "px";
                }
            })

            const searchLogo = document.getElementById("search-logo");

            searchLogo.addEventListener("click", () => {
                document.getElementById("search-logo").style.left = searchlogo + 220 + "px";
                document.querySelector("#search input").style.opacity = "1";
            })

        </script>
         <script
                                src="https://code.jquery.com/jquery-3.4.1.min.js"
                                integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
                            crossorigin="anonymous"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

                           
    </body>

</html>
