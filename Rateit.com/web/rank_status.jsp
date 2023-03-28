<%@page import="java.util.Comparator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="dbclasses.Review_database"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rateit.entities.Company"%>
<%@page import="rateit.helper.ConnectionProvider"%>
<%@page import="dbclasses.Company_database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Company_database cd = new Company_database(ConnectionProvider.getConnection());
    ArrayList<Company> list = cd.getAllCompanies();
     Collections.sort(list , new Comparator<Company>(){
 @Override
 public int compare(Company e1 , Company e2){  
     return Integer.valueOf(e2.getCOMPANY_RATE()).compareTo(e1.getCOMPANY_RATE());
 }});
     
    Review_database rd = new Review_database(ConnectionProvider.getConnection());
     
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Company Ranking | rateit.com</title>
        <link rel="stylesheet" href="css/rank_status.css">
        <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    </head>

    <body>
        <nav>
            <table>
                <tr height="50px"><td><a href="#" class="header-content">All Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Health Economics Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Technology Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Online Food Ordering Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Transportation service Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">E-commerce Store Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Automobile Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Social-Media Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Banking Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Financial Technology Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Jewellery Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Beverage Companies</a></td></tr>
                <tr height="50px"><td><a href="#" class="header-content">Cement Manufacturer Companies</a></td></tr>
            </table>
        </nav>

        <section id="Polls">
            <%for (int i=0;list.size() > i;i++) {
            
                Company e = list.get(i);
                    int rating = e.getCOMPANY_RATE();
            %>
            <div class="First-Poll" id="f-poll">
                <div class="logoContainer">
                    <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=e.getCOMPANY_NAME()%>"
                         id="l1" style="height: 50px; width: 55px;">
                </div>
                <div class="text-section">
                    <p><b><%=e.getCOMPANY_NAME()%></b></p><br>
                    <p class="details"><%=e.getCATEGORY()%></p>

                    <div class="details">
                        <%if (rating == 0) {%>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <%}%>
                        <%if (rating == 1) {%>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <%}%>
                        <%if (rating == 2) {%>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <%}%>
                        <%if (rating == 3) {%>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <%}%>
                        <%if (rating == 4) {%>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <%}%>
                        <%if (rating == 5) {%>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <%}%>
                    </div>
                    <p class="details">Total Review : <%=rd.getTotalRatings(e.getCOMPANY_ID())%></p>
                </div>
                <div class="description">
                    <b>About :</b>
                    <p><%=e.getCOMPANY_DESC() %></p>
                </div>
            </div>
            <%}%>
        </section>

        <script>
            $(document).ready(function () {
                $("tr:first").css("backgroundColor", "rgb(237, 75, 75)");
                $("nav table tr:first").css("color", "white");

                $("tr").click(function (e) {
                    $("tr").css("backgroundColor", "white");
                    $("tr").css("color", "black");

                    $(e.target).parent().parent().css("color", "white");
                    $(e.target).parent().parent().css("backgroundColor", "rgb(237, 75, 75)");
                });
            });
        </script>

    </body>
</html>
