<%@page import="rateit.entities.Poll"%>
<%@page import="dbclasses.Poll_database"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rateit.entities.Company"%>
<%@page import="dbclasses.Company_database"%>
<%@page import="rateit.helper.ConnectionProvider"%>
<%@page import="dbclasses.Customer_database"%>
<%@page import="rateit.entities.Message"%>
<%@page import="rateit.entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Rate it | Home Page</title>
        <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <!-- <link rel="stylesheet" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" href="" crossorigin="anonymous"> -->

        <link rel="stylesheet" href="css/index.css?2"/>

    </head>

    <body>
        <%
            Customer customer = (Customer) session.getAttribute("Customer");
            Message msg = (Message)session.getAttribute("Message");
        %>


            <div id="loginCheckContainer">
            
            <div id="loginCheck">
                <span><i class="fa-solid fa-triangle-exclamation" style="font-size:25px; color:red"></i>
                    <br><p style="font-size:13px;" ><b id="errMsg"></b></p></span>
                <section>
                    <a href="LogIn&SignUp.jsp"><button class="header-btn alertBtn" id="errBtn1">Login</button></a>
                    <button class="header-btn alertBtn" id="alertClose">Remind me later</button>
                </section>
            </div>
        </div>

        
        <header>
            <nav>
                <img class="main_logo" src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/logo.png?raw=true" alt="RATE-IT.COM">

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


                <button id="profile_btn" class="header-btn" ><%=customer.getUSER_NAME() %></button>

                <!--<a href="LogOut"><button class="header-btn" onclick="alert('log out successfully')"> Logout </button></a>-->



                <%}%>

            </nav>
        </header>
                <%
                   Poll_database pd = new Poll_database(ConnectionProvider.getConnection()); 
                   ArrayList<Poll> list = pd.getAllPoll();
                   
          
                %>
        <main>
            <div class="container">
<%for(Poll p : list){%>
 
   <%
   Company_database cd = new Company_database(ConnectionProvider.getConnection());
   Company cmp1 = cd.getCompanyById(p.getCOMPANY1());
   Company cmp2 = cd.getCompanyById(p.getCOMPANY2());
   int ratings1 = cmp1.getCOMPANY_RATE();
   int ratings2 = cmp1.getCOMPANY_RATE();
   %>
                <div class="items item1">

                    <section class="company1">

                        <div class="logoContainer">
                            <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp1.getCOMPANY_NAME() %>"
                                 class="logo" id="l1" style="height: 25px; width: 30px; margin-top: 5px;">
                        </div>

                        <p class="company_name"><%=cmp1.getCOMPANY_NAME() %></p>
                        <div class="star-1">
                            <span class="label">Ratings:</span>
                            <%if(ratings1 == 0){%>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings1 == 1){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings1 == 2){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings1 == 3){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings1 == 4){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings1 == 5){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <%}%>
                            
                        </div>
                    </section>

                    <h1 class="vs">VS</h1>

                    <section class="company2">
                        <div class="logoContainer">
                            <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp2.getCOMPANY_NAME()%>"
                                 class="logo" id="l2" style="height: 50px; width: 55px;">
                        </div>
                        <p class="company_name"><%=cmp2.getCOMPANY_NAME()%></p>
                        <div class="star-2">
                            <span class="label">Ratings:</span>
                            <%if(ratings2 == 0){%>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings2 == 1){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings2 == 2){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings2 == 3){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings2 == 4){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <%}%>
                            <%if(ratings2 == 5){%>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <%}%>
                        </div>
                    </section>

                        <button class="btn compareBtn" value="<%=p.getPOLL_ID()%>">Compare Now</button>
                    
                </div>
                <%}%>
                <!-- Ratings and star code completes -->
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
                            <%if (customer == null) {%>
                            <dd>
                                <a href="comp_login.jsp"> <button class="header-btn" id="header_button1" onclick=""><b>Company Login</b></button></a>
                            </dd>
                            <%}%>
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


        <script type="text/javascript" src="javascript/indexJS.js?2">

        </script>
    </body>

</html>
