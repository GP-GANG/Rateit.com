<%-- 
    Document   : Admin_panel
    Created on : 12-Mar-2023, 10:56:15 am
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
    <script src="javascript\multiselect-dropdown.js"></script>
    <link rel="stylesheet" href="css/admin_panel.css">
    <title>Admin Panel</title>
</head>

<body>

    <nav>
        <table id="table1">
            <tr height="50px">
                <td><a href="#page5" class="header-content">‎ ‎ COMPANIES</a></td>
            </tr>
            <tr height="50px">
                <td><a href="#page6" class="header-content">‎ ‎ POLLS</a></td>
            </tr>
            <tr height="50px">
                <td><a href="#page7" class="header-content">‎ ‎ REPORT</a></td>
            </tr>
            <tr height="50px">
                <td><a href="#" class="header-content">‎ ‎ NOTIFICATION</a></td>
            </tr>
        </table>
        <table id="table2">
            <tr height="50px">
                <td><a href="#page1" class="header-content">‎ ‎ + Add Company</a></td>
            </tr>
            <tr height="50px">
                <td><a href="#page2" class="header-content">‎ ‎ + Remove Company</a></td>
            </tr>
            <tr height="50px">
                <td><a href="#page3" class="header-content">‎ ‎ + Add Poll</a></td>
            </tr>
            <tr height="50px">
                <td><a href="#page4" class="header-content">‎ ‎ + Remove Poll</a></td>
            </tr>
            <tr height="50px">
                <td><a href="#page8" class="header-content">‎ ‎ + Send Report</a></td>
            </tr>
        </table>
        <button id="logout"><b>Log Out</b></button>
    </nav>
    <div id="header">
        <p>ADMIN PANEL</p>
    </div>

    <div id="container">

        <!-- //////...............////............../ page-1 //////....................///.............../// -->
        <section id="page1">
            <main id="box-container">
                <div class="block">
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                        height="50px" width="70px"><br>
                </div>

                <div id="content-box1">
                    <input class="content1" type="text" placeholder="Company Name :"><br>
                    <input class="content1" type="text" placeholder="Company UserName :"><br>
                    <input class="content1" type="number" placeholder="Company ID :"><br>
                    <input class="content1" type="email" placeholder="Company E-Mail :"><br>
                    <input class="content1" type="datetime" placeholder="Company Joining Date :"><br>
                    <input class="content1" type="text" placeholder="Company Category :"><br>

                    <button id="submit-btn">Submit</button>
                </div>
            </main>
        </section>


        <!-- //////...............////............../ page-2 //////....................///.............../// -->
        <section id="page2">
            <div class="content-box2">
                <p class="inside_header">REMOVE COMPANY</p>
                <input class="content2" id="comp_name" type="text" placeholder="Company User Name :"><br>
                <input class="content2" id="comp_id" type="text" placeholder="Company ID :"><br>
                <button class="remove_button">Remove</button>
            </div>
        </section>


        <!-- //////...............////............../ page-3 //////....................///.............../// -->
        <section id="page3">
            <main class="container">
                <div id="company1">
                    <p class="inside_header">Company - 1</p>
                    <div class="block1">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                            height="45px" width="60px"><br>
                    </div>
                    <input class="input1" type="text" placeholder="Company Name :"><br>
                    <div class="selector">
                        <div>
                            <form>
                                <select name="Services" id="services" multiple>
                                    <option value="Timing">Timing</option>
                                    <option value="Product">Product</option>
                                    <option value="Payment">Payment</option>
                                    <option value="Employ">Emploies</option>
                                    <option value="Packing">Packing</option>
                                </select>
                            </form>
                        </div>
                        <button>+ADD</button>
                    </div>
                </div>

                <div id="company2">
                    <p class="inside_header">Company - 2</p>
                    <div class="block1">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/infosys.png?raw=true"
                            height="50px" width="60px"><br>
                    </div>
                    <input class="input1" type="text" placeholder="Company Name :"><br>
                    <div class="selector">
                        <div>
                            <form>
                                <select name="Services" id="services" multiple>
                                    <option value="Timing">Timing</option>
                                    <option value="Product">Product</option>
                                    <option value="Payment">Payment</option>
                                    <option value="Employ">Emploies</option>
                                    <option value="Packing">Packing</option>
                                </select>
                            </form>
                        </div>
                        <button>+ADD</button>
                    </div>
                </div>
                <input class="dating" type="text" placeholder="Starting Date :">
                <input class="dating" type="text" placeholder="Ending Date :">
                <button class="Create_button">Create Poll</button>
            </main>
        </section>


        <!-- //////...............////............../ page-4 //////....................///.............../// -->
        <section id="page4">
            <div class="content-box2">
                <p class="inside_header">REMOVE &nbsp;POLL</p>
                <input class="content2" id="poll_name" type="text" placeholder="  Poll_Name :"><br>
                <input class="content2" id="poll_id" type="text" placeholder="  Poll ID :"><br>
                <button class="remove_button">Remove</button>
            </div>
        </section>


        <!-- //////...............////............../ page-5 //////....................///.............../// -->
        <section id="page5">
            <div class="box box-3">
                <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                    height="50px" width="60px" id="logo"><span id="l1">
                    <b>Name:</b> TATA Consultancy Service</span><br>
                <span id="l2"><b>Category:</b>Service Based</span><br>
                <span id="l3" name=""><b>Status:</b>Individual/In-Poll</span>
            </div>

            <div class="box box-2">
                <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                    height="50px" width="60px" id="logo"><span id="l1">
                    <b>Name:</b> TATA Consultancy Service</span><br>
                <span id="l2"><b>Category:</b>Service Based</span><br>
                <span id="l3" name=""><b>Status:</b>Individual/In-Poll</span>
            </div>

            <div class="box box-3">
                <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                    height="50px" width="60px" id="logo"><span id="l1">
                    <b>Name:</b> TATA Consultancy Service</span><br>
                <span id="l2"><b>Category:</b>Service Based</span><br>
                <span id="l3" name=""><b>Status:</b>Individual/In-Poll</span>
            </div>

            <div class="box box-2">
                <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                    height="50px" width="60px" id="logo"><span id="l1">
                    <b>Name:</b> TATA Consultancy Service</span><br>
                <span id="l2"><b>Category:</b>Service Based</span><br>
                <span id="l3" name=""><b>Status:</b>Individual/In-Poll</span>
            </div>

            <div class="box box-2">
                <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                    height="50px" width="60px" id="logo"><span id="l1">
                    <b>Name:</b> TATA Consultancy Service</span><br>
                <span id="l2"><b>Category:</b>Service Based</span><br>
                <span id="l3" name=""><b>Status:</b>Individual/In-Poll</span>
            </div>

        </section>


        <!-- //////...............////............../ page-6 //////....................///.............../// -->
        <section id="page6">
            <div class="poll-box">
                <div class="wole-box">
                <div class="comp-cont-box1">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true" height="30px" width="40px">
                        <p>amazon</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
                <div class="comp-cont-box2">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/flipkart.png?raw=true" height="30px" width="40px">
                        <p>flipkart</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
            </div>
                <button class="poll-remove-btn">Remove</button>
            </div>

            <div class="poll-box">
                <div class="wole-box">
                <div class="comp-cont-box1">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true" height="30px" width="40px">
                        <p>amazon</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
                <div class="comp-cont-box2">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/flipkart.png?raw=true" height="30px" width="40px">
                        <p>flipkart</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
            </div>
                <button class="poll-remove-btn">Remove</button>
            </div>

            <div class="poll-box">
                <div class="wole-box">
                <div class="comp-cont-box1">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true" height="30px" width="40px">
                        <p>amazon</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
                <div class="comp-cont-box2">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/flipkart.png?raw=true" height="30px" width="40px">
                        <p>flipkart</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
            </div>
                <button class="poll-remove-btn">Remove</button>
            </div>

            <div class="poll-box">
                <div class="wole-box">
                <div class="comp-cont-box1">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true" height="30px" width="40px">
                        <p>amazon</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
                <div class="comp-cont-box2">
                    <div class="img-name">
                        <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/flipkart.png?raw=true" height="30px" width="40px">
                        <p>flipkart</p>
                    </div>
                    <div class="rcr-box">
                        <div class="star-1">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <span>online service</span>
                        <span>32,43,332</span>
                    </div>
                </div>
            </div>
                <button class="poll-remove-btn">Remove</button>
            </div>
        </section>


        <!-- //////...............////............../ page-7 //////....................///.............../// -->
        <section id="page7">
            <div class="report-box">
                <div>
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                        height="30px" width="40px">

                    <p class="com-name">amazon</p>
                </div>
                <div class="com-content">
                    <div class="star-1">
                        <span class="label"><b>Ratings:</b></span>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <p><b>Category:</b> online delivery</p>
                </div>
            </div>

            <div class="report-box">
                <div>
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                        height="30px" width="40px">

                    <p class="com-name">amazon</p>
                </div>

                <div class="com-content">
                    <div class="star-1">
                        <span class="label"><b>Ratings:</b></span>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <p><b>Category:</b> online delivery</p>
                </div>
            </div>

            <div class="report-box">
                <div>
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                        height="30px" width="40px">

                    <p class="com-name">amazon</p>
                </div>

                <div class="com-content">
                    <div class="star-1">
                        <span class="label"><b>Ratings:</b></span>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <p><b>Category:</b> online delivery</p>
                </div>
            </div>

            <div class="report-box">
                <div>
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                        height="30px" width="40px">

                    <p class="com-name">amazon</p>
                </div>

                <div class="com-content">
                    <div class="star-1">
                        <span class="label"><b>Ratings:</b></span>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <p><b>Category:</b> online delivery</p>
                </div>
            </div>

            <div class="report-box">
                <div>
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                        height="30px" width="40px">

                    <p class="com-name">amazon</p>
                </div>

                <div class="com-content">
                    <div class="star-1">
                        <span class="label"><b>Ratings:</b></span>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <p><b>Category:</b> online delivery</p>
                </div>
            </div>

            <div class="report-box">
                <div>
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true"
                        height="30px" width="40px">

                    <p class="com-name">amazon</p>
                </div>

                <div class="com-content">
                    <div class="star-1">
                        <span class="label"><b>Ratings:</b></span>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <p><b>Category:</b> online delivery</p>
                </div>
            </div>
        </section>


        <!-- //////...............////............../ page-8 //////....................///.............../// -->
        <section id="page8">
            <form id="search-poll_com">
                <input type="search" placeholder="Search Company" size="30">
                <input type="search" placeholder="Search Poll-ID" size="30">
                <button id="search-poll_com-btn">Search</button>
            </form><br><br><br><br>

            <div id="main-8">
                <div class="main-8">
                    <div class="wole-box">
                    <div class="comp-cont-box1">
                        <div class="img-name">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/amazon.png?raw=true" height="30px" width="40px">
                            <p>amazon</p>
                        </div>
                        <div class="rcr-box">
                            <div class="star-1">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                            </div>
                            <span>online service</span>
                            <span>32,43,332</span><br>
                            <input class="file-upload" type="file">
                        </div>
                    </div>
                    <div class="comp-cont-box2">
                        <div class="img-name">
                            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/flipkart.png?raw=true" height="30px" width="40px">
                            <p>flipkart</p>
                        </div>
                        <div class="rcr-box">
                            <div class="star-1">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                            </div>
                            <span>online service</span>
                            <span>32,43,332</span><br>
                            <input class="file-upload" type="file">
                        </div>
                    </div>
                </div>
                    <button style="margin-top: -20px;" class="poll-remove-btn">Send Report</button>
                </div>
            </div>
        </section>
    </div>

</body>

<script>
    $(document).ready(function () {
        
        // this will focus on  the clicked element
        $("tr a").click(function (a) {
            $("td").css({ "background-color": "white", "color": "black" });
            $(a.target).parent().css({ "background": " rgb(237, 75, 75)", "color": "white" })
        })
    })
</script>

</html>
