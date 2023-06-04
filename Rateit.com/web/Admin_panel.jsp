<%@page import="dbclasses.Report_database"%>
<%@page import="dbclasses.Customer_database"%>
<%@page import="dbclasses.Company_services_database" %>
<%@page import="rateit.entities.Company_services" %>
<%@page import="rateit.entities.Poll" %>
<%@page import="dbclasses.Poll_database" %>
<%@page import="java.util.ArrayList" %>
<%@page import="rateit.entities.Company" %>
<%@page import="rateit.helper.ConnectionProvider" %>
<%@page import="dbclasses.Company_database" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% HttpSession s = request.getSession();
    Company_database cd = new Company_database(ConnectionProvider.getConnection());
    ArrayList<Company> list
            = cd.getAllCompanies();
    ArrayList<Company> list1 = cd.getRegisterCompanies();
    ArrayList<Company> list3 = cd.getPollrequets();

    Poll_database pd = new Poll_database(ConnectionProvider.getConnection());
    ArrayList<Poll> list2 = pd.getAllPoll();
    ArrayList<Poll> list5 = pd.getActivePolls();

    Company_services_database csd = new Company_services_database(ConnectionProvider.getConnection());
    
  Customer_database cdd = new Customer_database(ConnectionProvider.getConnection());

int i = cd.getAllCompanies().size() - new Report_database(ConnectionProvider.getConnection()).getAllReport().size();

%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/20a4a662a5.js"
        crossorigin="anonymous"></script>
        <script src="javascript\multiselect-dropdown.js"></script>
        <link rel="stylesheet" href="css/admin_panel.css?12">
        <!--        <link rel="stylesheet" href="bootstrap.css">-->
        <title>Admin Panel</title>

        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script>
            <script>
$(document).ready(function () {
            const Admin_password_forLogin = "1234";
            let pass = prompt("Enter Admin key");
            if (Admin_password_forLogin != pass){
            alert("You are not authenticated user.");
            window.location.assign("error_page.jsp");
            }
            // this will focus on  the clicked element
            $("tr a").click(function (a) {
            $("td").css({ "background-color": "black", "color": "white" });
            $(a.target).parent().css({ "background": " white", "color": "black" })
            })
    })
    </script>
                                                    </head>

                                                    <body>
                                                        <nav>
                                                            <table id="table1">
                                                                <img id="rateit-logo"
                                                                    src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/logo.png?raw=true">
                                                                <tr height="50px">
                                                                    <td><a href="#default_page" class="header-content">‎ <i
                                                                                class="fa-solid fa-house"></i>
                                                                            Dashboard</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page5" class="header-content">‎ <i
                                                                                class="fa-solid fa-city"></i>
                                                                            Companies</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page6" class="header-content">‎ <i
                                                                                class="fa-solid fa-square-poll-vertical"></i>
                                                                            Polls</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page7" class="header-content">‎ <i
                                                                                class="fa-solid fa-file-lines"></i>
                                                                            Report</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page9" class="header-content">‎ <i
                                                                                class="fa-solid fa-registered"></i>
                                                                            Registered ‎Company</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page10" class="header-content">‎ <i
                                                                                class="fa-solid fa-square-poll-horizontal"></i>
                                                                            Poll requests</a></td>
                                                                </tr>
                                                            </table>
                                                            <table id="table2">
                                                                <tr height="50px">
                                                                    <td><a href="#page1" class="header-content">‎ <i
                                                                                class="fa-solid fa-square-plus"></i> Add
                                                                            Company</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page3" class="header-content">‎ <i
                                                                                class="fa-solid fa-file-circle-plus"></i>
                                                                            Add Poll</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page2" class="header-content">‎ <i
                                                                                class="fa-solid fa-square-minus"></i>
                                                                            Remove Company</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page4" class="header-content">‎ <i
                                                                                class="fa-solid fa-file-circle-minus"></i>
                                                                            Remove Poll</a></td>
                                                                </tr>
                                                                <tr height="50px">
                                                                    <td><a href="#page8" class="header-content">‎ <i
                                                                                class="fa-solid fa-share-from-square"></i>
                                                                            Send Report</a></td>
                                                                </tr>
                                                            </table>
                                                            <button id="logout"><b>Log Out</b></button>
                                                        </nav>
                                                        <div id="header">
                                                            <p>ADMIN PANEL</p>
                                                        </div>

                                                        <div id="container">
                                                            <section id="default_page">
                                                                <div id="LASTBOX">
                                                                    <div class="active-box">
                                                                        <div>
                                                                        <p class="mini-head">Active Polls</p>
                                                                        <h3 class="active-number"><%=list5.size()%></h3>
                                                                    </div>
                                                                    <div class="logo-cont">
                                                                    <i id="log1" class="fa-solid fa-ranking-star logos"></i>
                                                                </div>
                                                                    </div>

                                                                    <div class="active-box">
                                                                        <div>
                                                                        <p class="mini-head">Active Users</p>
                                                                        <h3 class="active-number"><%=cdd.getTotalUser() %></h3>
                                                                    </div>
                                                                    <div class="logo-cont">
                                                                        <i id="log2" class="fa-solid fa-users logos"></i>
                                                                    </div>
                                                                    </div>

                                                                    <div class="active-box">
                                                                        <div>
                                                                        <p class="mini-head">Active Companies</p>
                                                                        <h3 class="active-number"><%=cd.getTotalCompany() %></h3>
                                                                    </div>
                                                                    <div class="logo-cont">
                                                                        <i id="log3" class="fa-solid fa-city logos"></i>
                                                                    </div>
                                                                    </div>

                                                                    <div class="active-box">
                                                                        <div>
                                                                        <p class="mini-head">Pending Reports</p>
                                                                        <h3 class="active-number"><%=i %></h3>
                                                                    </div>
                                                                    <div class="logo-cont">
                                                                        <i id="log4" class="fa-solid fa-file logos"></i>
                                                                    </div>
                                                                    </div>
                                                                 </div>
                                                                 <div class="sub-box">
                                                                <div id="box1">
                                                                    <div class="calendar">

                                                                        <div class="month">
                                                                            <ul>
                                                                                <li class="prev">&#10094;</li>
                                                                                <li class="next">&#10095;</li>
                                                                                <li>
                                                                                    April<br>
                                                                                    <span
                                                                                        style="font-size:18px">2023</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>

                                                                        <ul class="weekdays">
                                                                            <li>Mo</li>
                                                                            <li>Tu</li>
                                                                            <li>We</li>
                                                                            <li>Th</li>
                                                                            <li>Fr</li>
                                                                            <li>Sa</li>
                                                                            <li>Su</li>
                                                                        </ul>

                                                                        <ul class="days">
                                                                            <li>1</li>
                                                                            <li>2</li>
                                                                            <li>3</li>
                                                                            <li>4</li>
                                                                            <li>5</li>
                                                                            <li>6</li>
                                                                            <li>7</li>
                                                                            <li>8</li>
                                                                            <li>9</li>
                                                                            <li>10</li>
                                                                            <li>11</li>
                                                                            <li>12</li>
                                                                            <li>13</li>
                                                                            <li>14</li>
                                                                            <li>15</li>
                                                                            <li>16</li>
                                                                            <li>17</li>
                                                                            <li>18</li>
                                                                            <li>19</li>
                                                                            <li>20</li>
                                                                            <li>21</li>
                                                                            <li>22</li>
                                                                            <li>23</li>
                                                                            <li>24</li>
                                                                            <li>25</li>
                                                                            <li>26</li>
                                                                            <li>27</li>
                                                                            <li><span class="active">28</span></li>
                                                                            <li>29</li>
                                                                            <li>30</li>
                                                                            <li>31</li>
                                                                        </ul>
                                                                    </div>

                                                                </div>
                                                                <div id="box2">
                                                                    <p id="box2-head">Poll Details</p>

                                                                    <div class="box2-cont">
                                                                        <p class="cont-name">Total Polls</p>
                                                                        <span class="cont-no"><%=(pd.getAllPoll()).size() %></span>
                                                                    </div>
                                                                    <div class="underline" id="ul1"></div>
                                                                    <div class="box2-cont">
                                                                        <p class="cont-name">Previous Polls</p>
                                                                        <p class="cont-no">233</p>
                                                                    </div>
                                                                    <div class="underline" id="ul2"></div>
                                                                    <div class="box2-cont">
                                                                        <p class="cont-name">Expired Polls</p>
                                                                        <p class="cont-no"><%=pd.getExpiredPolls().size() %></p>
                                                                    </div>
                                                                    <div class="underline" id="ul3"></div>
                                                                    <div class="box2-cont">
                                                                        <p class="cont-name">Requested Polls</p>
                                                                        <p class="cont-no"><%=list3.size() %></p>
                                                                    </div>
                                                                    <div class="underline" id="ul4"></div>
                                                                </div>
                                                                </div>
                                                            </section>



                                                            <!-- //////...............////............../ page-1 //////....................///.............../// -->


                                                            <section id="page1">
            <%if (request.getParameter("aa") == null) {%>
        <h5>you can also add company from the registered
            company</h5>
        <main id="box-container">
            <div class="block">
                <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                     height="50px" width="70px"><br>
            </div>

            <div id="content-box1">
                <input class="content1" type="text"
                       placeholder="Company Name :"><br>
                <input class="content1" type="text"
                       placeholder="Company UserName :"><br>
                <input class="content1" type="number"
                       placeholder="Company ID :"><br>
                <input class="content1" type="email"
                       placeholder="Company E-Mail :"><br>
                <input class="content1" type="datetime"
                       placeholder="Company Joining Date :"><br>
                <input class="content1" type="text"
                       placeholder="Company Category :"><br>

                <button id="submit-btn">Submit</button>
            </div>
        </main>
        <%} else {
            int id = Integer.parseInt(request.getParameter("aa"));
            Company cmp = cd.getCompanyById(id);%>
        <main id="box-container">
            <div class="block">
                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp.getCOMPANY_NAME()%>"
                     height="50px" width="70px"><br>
            </div>

            <div id="content-box1">
                <form action="AddCompany">
                    <input class="content1" name="name"
                           type="text"
                           value="<%=cmp.getCOMPANY_NAME()%>"><br>
                    <input class="content1" name="login"
                           type="text"
                           placeholder="Enter LOGIN"><br>
                    <input class="content1" name="id"
                           type="number"
                           value="<%=cmp.getCOMPANY_ID()%>"><br>
                    <input class="content1" name="mail"
                           type="email"
                           value="<%=cmp.getCOMPANY_MAIL()%>"><br>
                    <input class="content1"
                           name="joindate" type="datetime"
                           value="<%=cmp.getJOIN_DATE()%>"><br>
                    <input class="content1"
                           name="category" type="text"
                           value="<%=cmp.getCATEGORY()%>"><br>

                    <input type="submit" id="submit-btn"
                           value="submit">

                    </div>
                    </main>
                    <%}%>
                    </section>


                    <!-- //////...............////............../ page-2 //////....................///.............../// -->
                    <section id="page2">
                        <div class="content-box2">
                            <p class="inside_header">REMOVE COMPANY</p>
                            <form action="RemoveCompany">
                                <input class="content2" id="comp_name"
                                       type="text"
                                       placeholder="Company User Name :"><br>
                                <input class="content2" id="comp_id" name="id"
                                       type="text" placeholder="Company ID :"><br>
                                <input type="submit" class="remove_button"
                                       value="remove">
                            </form>
                        </div>
                    </section>


                    <!-- //////...............////............../ page-3 //////....................///.............../// -->
                    <section id="page3">
                        <%if (request.getParameter("id") == null) {%>
                        <p>you can also add poll from Poll requests</p>
                        <main class="container">
                            <div id="company1">
                                <p class="inside_header">Company - 1</p>
                                <div class="block1">
                                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true"
                                         height="60px" width="70px"><br>
                                </div>
                                <input class="input1" type="text"
                                       placeholder="Company ID:"><br>
                                <div class="selector">
                                    <form>
                                        <input type="checkbox"
                                               name="delivery"> delivery
                                    </form>
                                </div>
                            </div>

                            <div id="company2">
                                <p class="inside_header">Company - 2</p>
                                <div class="block1">
                                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/infosys.png?raw=true"
                                         height="60px" width="70px"><br>
                                </div>
                                <input class="input1" type="text"
                                       placeholder="Company ID :"><br>
                                <div class="selector">
                                    <form>
                                        <input type="checkbox"
                                               name="delivery"> delivery
                                    </form>
                                </div>
                            </div>
                            <input class="dating" type="text"
                                   placeholder="Starting Date :">
                            <input class="dating" type="text"
                                   placeholder="Ending Date :">
                            <button class="Create_button">Create
                                Poll</button>
                        </main>
                        <%} else {
                            int Company_id = Integer.parseInt(request.getParameter("id"));
                            Company cmp1 = cd.getCompanyById(Company_id);%>
                        <main class="container">

                            <div id="company1">
                                <p class="inside_header">
                                    <%=cmp1.getCOMPANY_NAME()%>
                                </p>
                                <div class="block1">
                                    <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp1.getCOMPANY_NAME()%>"
                                         height="45px" width="60px"><br>
                                </div>
                                <form action="AddPoll" method="post">
                                    <input class="input1" type="text"
                                           name="company1"
                                           value="<%=cmp1.getCOMPANY_ID()%>"><br>
                                    <div class="selector">
                                        <% ArrayList<Company_services> list4
                                                    = csd.getAllCategories(cmp1.getCOMPANY_ID());
                                            for (Company_services e
                                                    : list4) {
                                        %>
                                        <label>
                                            <%=e.getCOMPANY_SERVICES()%>
                                        </label>
                                        <%}%>
                                    </div>
                            </div>

                            <div id="company2">
                                <p class="inside_header">Company - 2</p>
                                <div class="block1">
                                    <img src="" height="50px"
                                         width="60px"><br>
                                </div>
                                <input class="input1" name="company2"
                                       type="text"
                                       placeholder="Company ID :"><br>
                                <div class="selector">

                                    <input type="checkbox"
                                           name="delivery"> delivery

                                </div>
                            </div>
                            <input class="dating" type="text"
                                   placeholder="Starting Date :">
                            <input class="dating" type="text"
                                   placeholder="Ending Date :">
                            <input type="text" name="poll_id"
                                   id="poll-id-sec"
                                   placeholder="enter poll id :"><br>
                            <button type="submit"
                                    class="Create_button">Create
                                Poll</button>

                            </form>
                        </main>

                        <%}%>
                    </section>


                    <!-- //////...............////............../ page-4 //////....................///.............../// -->

                    <section id="page4">
                        <%if (request.getParameter("id2") == null) {%>
                        <p>you can also remove polls from polls</p>
                        <div class="content-box2">
                            <form action="RemovePoll" method="post">
                                <p class="inside_header">REMOVE &nbsp;POLL
                                </p>
                                <input class="content2" id="poll_name"
                                       type="text"
                                       placeholder="  Poll_Name :"><br>
                                <input class="content2" id="poll_id"
                                       name="id" type="text"
                                       placeholder="  Poll ID :"><br>
                                <input type="submit" class="remove_button"
                                       value="remove">
                            </form>
                        </div>
                        <%} else {
                            int id = Integer.parseInt(request.getParameter("id2"));
                            String cmp1 = request.getParameter("name1");
                            String cmp2 = request.getParameter("name2");%>
                        <div class="content-box2">
                            <form action="RemovePoll" method="post">
                                <p class="inside_header">REMOVE
                                    &nbsp;POLL</p>
                                <input class="content2" id="poll_name"
                                       type="text"
                                       value="<%=cmp1%> vs <%=cmp2%>"><br>
                                <input class="content2" id="poll_id"
                                       name="id" type="text"
                                       value="<%=id%>"><br>
                                <input type="submit"
                                       class="remove_button"
                                       value="remove">
                            </form>
                        </div>
                        <%}%>
                    </section>
                    <!-- //////...............////............../ page-5 //////....................///.............../// -->

                    <section id="page5">
                        <%for (Company e : list) {%>
                        <div class="box box-5">
                            <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=e.getCOMPANY_NAME()%>"
                                 height="50px" width="60px" id="logo"><span
                                 id="l1">
                                <b>Name:</b>
                                <%=e.getCOMPANY_NAME()%>
                            </span><br>
                            <span id="l2"><b>Category:</b>
                                <%=e.getCATEGORY()%>
                            </span><br>
                            <span id="l3"
                                  name=""><b>Status:</b>Individual/In-Poll</span>
                        </div>
                        <%}%>
                    </section>


                    <!-- //////...............////............../ page-6 //////....................///.............../// -->

                    <section id="page6">

                        <%for (Poll e : list2) {
                                Company_database cd1 = new Company_database(ConnectionProvider.getConnection());
                                Company cmp1 = cd1.getCompanyById(e.getCOMPANY1());
                                Company cmp2 = cd1.getCompanyById(e.getCOMPANY2());%>
                        <div class="poll-box">
                            <div class="wole-box">
                                <div class="comp-cont-box1">
                                    <div class="img-name">
                                        <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp1.getCOMPANY_NAME()%>"
                                             height="30px" width="40px">
                                        <p>
                                            <%=cmp1.getCOMPANY_NAME()%>
                                        </p>
                                    </div>
                                    <div class="rcr-box">
                                        <div class="star-1">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i
                                                class="fa-regular fa-star"></i>
                                        </div>
                                        <span>online service</span>
                                        <span>32,43,332</span>
                                    </div>
                                </div>
                                <div class="comp-cont-box2">
                                    <div class="img-name">
                                        <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp2.getCOMPANY_NAME()%>"
                                             height="30px" width="40px">
                                        <p>
                                            <%=cmp2.getCOMPANY_NAME()%>
                                        </p>
                                    </div>
                                    <div class="rcr-box">
                                        <div class="star-1">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i
                                                class="fa-regular fa-star"></i>
                                        </div>
                                        <span>online service</span>
                                        <span>32,43,332</span>
                                    </div>
                                </div>
                            </div>
                            <form action="Redirect3" method="post">
                                <input type="hidden" name="cmp1"
                                       value="<%=cmp1.getCOMPANY_NAME()%>">
                                <input type="hidden" name="cmp2"
                                       value="<%=cmp2.getCOMPANY_NAME()%>">
                                <input type="hidden" name="poll_id"
                                       value="<%=e.getPOLL_ID()%>">
                                <button type="submit"
                                        class="poll-remove-btn2">Remove</button>
                            </form>
                        </div>
                        <%}%>
                    </section>

                    <!-- //////...............////............../ page-7 //////....................///.............../// -->

                    <section id="page7">
                        <%for (Company e : list) {
                                Company_services cs1 = csd.getCategory(e.getCOMPANY_ID());%>
                        <div class="report-box">

                            <div id="comp-logo-name-cont">
                                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=e.getCOMPANY_NAME()%>"
                                     height="30px" width="40px">

                                <p class="com-name">
                                    <%=e.getCOMPANY_NAME()%>
                                </p>
                            </div>
                            <div class="com-content">
                                <div class="star-1">
                                    <span
                                        class="label"><b>Ratings:</b></span>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                </div>
                                <p><b>Category:</b>
                                    <%=cs1.getCATEGORY()%>
                                </p>
                            </div>
                        </div>
                        <%}%>
                    </section>


                    <!-- //////...............////............../ page-8 //////....................///.............../// -->
                    <section id="page8">

                        <form id="search-poll_com">
                            <input type="search" placeholder="Search Company"
                                   size="30">
                            <input type="search" placeholder="Search Poll-ID"
                                   size="30">
                            <button id="search-poll_com-btn">Search</button>
                        </form><br><br><br>
                        <%for (Poll e : list2) {
                                Company_database cd1 = new Company_database(ConnectionProvider.getConnection());
                                Company cmp1 = cd1.getCompanyById(e.getCOMPANY1());
                                Company cmp2 = cd1.getCompanyById(e.getCOMPANY2());%>
                        <form action="Sendrepo" method="post"
                              enctype="multipart/form-data">
                            <div id="main-8">
                                <div class="main-8">
                                    <div class="wole-box">
                                        <div class="comp-cont-box1">
                                            <div class="img-name">
                                                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp1.getCOMPANY_NAME()%>"
                                                     height="30px"
                                                     width="40px">
                                                <p>
                                                    <%=cmp1.getCOMPANY_NAME()%>
                                                </p>
                                            </div>
                                            <div class="rcr-box">
                                                <div class="star-1">
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-regular fa-star"></i>
                                                </div>
                                                <span>online service</span>
                                                <span>32,43,332</span><br>
                                                <input class="file-upload"
                                                       name="report1"
                                                       type="file">
                                            </div>
                                        </div>
                                        <div class="comp-cont-box2">
                                            <div class="img-name">
                                                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp2.getCOMPANY_NAME()%>"
                                                     height="30px"
                                                     width="40px">
                                                <p>
                                                    <%=cmp2.getCOMPANY_NAME()%>
                                                </p>
                                            </div>
                                            <div class="rcr-box">
                                                <div class="star-1">
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-solid fa-star"></i>
                                                    <i
                                                        class="fa-regular fa-star"></i>
                                                </div>
                                                <span>online service</span>
                                                <span>32,43,332</span><br>
                                                <input class="file-upload"
                                                       name="report2"
                                                       type="file">
                                            </div>
                                        </div>
                                    </div> <input type="hidden" name="c1"
                                                  value="<%=cmp1.getCOMPANY_ID()%>">
                                    <input type="hidden" name="c2"
                                           value="<%=cmp2.getCOMPANY_ID()%>">
                                    <input type="hidden" name="poll_id"
                                           value="<%=e.getPOLL_ID()%>">
                                    <button type="submit"
                                            style="margin-top: -20px;"
                                            class="poll-remove-btn1">Send
                                        Report</button>
                                </div>
                            </div>
                        </form>
                        <%}%>
                    </section>
                    <!-- //////...............////............../ page-9 //////....................///.............../// -->

                    <section id="page9">
                        <%if (list1 == null) {%>
                        <p>there is no registered company</p>
                        <%} else {%>
                        <%for (Company e : list1) {%>
                        <form
                            action="Redirect?a=<%=e.getCOMPANY_ID()%>"
                            method="POST">
                            <div class="box box-3">
                                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=e.getCOMPANY_NAME()%>"
                                     height="50px" width="60px"
                                     id="logo"><span id="l1">
                                    <b>Name:</b>
                                    <%=e.getCOMPANY_NAME()%>
                                </span><br>
                                <span id="l2"><b>Category:</b>
                                    <%=e.getCATEGORY()%>
                                </span><br>
                                <span id="l3"
                                      name=""><b>Status:</b>Individual/In-Poll</span>
                                <br><br>

                                <input id="regis_comp_btn"
                                       type="submit" value="submit">
                            </div>
                        </form>
                        <%}
                            }%>
                        <!-- //////...............////............../ page-10 //////....................///.............../// -->

                    </section>
                    <section id="page10">
                        <%if (list1 == null) {%>
                        <p>there is no Poll request</p>
                        <%} else {%>
                        <%for (Company e : list3) {%>
                        <form
                            action="Redirect1?id=<%=e.getCOMPANY_ID()%>"
                            method="POST">
                            <div class="box box-3">
                                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=e.getCOMPANY_NAME()%>"
                                     height="50px" width="60px"
                                     id="logo"><span id="l1">
                                    <b>Name:</b>
                                    <%=e.getCOMPANY_NAME()%>
                                </span><br>
                                <span id="l2"><b>Category:</b>
                                    <%=e.getCATEGORY()%>
                                </span><br>
                                <span id="l3"
                                      name=""><b>Status:</b>Individual/In-Poll</span>
                                <br><br>

                                <input id="regis_comp_btn"
                                       type="submit" value="Add">
                            </div>
                        </form>
                        <%}
                            }%>
                    </section>
            </div>

        </body>

        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <scrip        t>
    
    $("#filter").change(functi                        on () {
                    let option = $("#filter")                .val();
            $.post("FilterCompany", { "value": option }, function (resp                onse) {
            console.log(re                sponse)
                    });
        });
                   
              </s            cript>

                                       <!--<script>
                        $(document).ready(functi on () {
                     
           const Admin_password_forLogin =  "1234";
                     
           let pass = prompt("Enter Admin key");
                     
           if(Admin_password_forLogin !=     pass){
                                alert("You are not authenticated u     ser.");
                                window.location.assign("error_page .jsp");
                      }
          // this willfocus on  the clicked  element
                            $("tr a").click(functio     n (a) {
                                $("td").css({ "background-color": "black", "color": "whi     te" });
                                $(a.target).parent().css({ "background": " white", "color": "bl ack" })
                       })
    })
             </script>-->

      </html>