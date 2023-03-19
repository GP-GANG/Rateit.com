<%@page import="dbclasses.Company_database"%>
<%@page import="java.util.ArrayList"%>
<%@page import="rateit.entities.Poll"%>
<%@page import="rateit.entities.Company"%>
<%@page import="dbclasses.Poll_database"%>
<%@page import="rateit.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Poll_database pd = new Poll_database(ConnectionProvider.getConnection());

    Company cm= (Company)session.getAttribute("Company");
    ArrayList<Poll> pList = pd.getPollOfCompany(cm.getCOMPANY_ID());
    
 Company_database cd = new Company_database(ConnectionProvider.getConnection());
 
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rate It | Recent Poll List</title>
    <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/poll_result.css">
</head>

<body>
    <main>
        <div class="container">

            <div class="items item1">

                <section class="company1">
                         <%for(Poll e : pList){
                         Company cmp1 = cd.getCompanyById(e.getCOMPANY1());
                         Company cmp2 = cd.getCompanyById(e.getCOMPANY2());
                             %>
                    <div class="logoContainer">
                        <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp1.getCOMPANY_NAME()%>"
                            class="logo" id="l1" style="height: 25px; width: 30px; margin-top: 5px;">
                    </div>
                    <p class="company_name"><%=cmp1.getCOMPANY_NAME()%></p>
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
                        <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp2.getCOMPANY_NAME()%>"
                            class="logo" id="l2" style="height: 50px; width: 55px;">
                    </div>
                    <p class="company_name"><%=cmp2.getCOMPANY_NAME()%></p>
                    <div class="star-2">
                        <span class="label">Ratings:</span>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <a href="HelperJSP/getReport.jsp?cmp_id=4&poll_id=1111" download><button class="btn">Download</button></a>
<%}%>
                </section>

               

            </div>
<!--             Ratings and star code completes 

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
            </div>
             Ratings and star code completes -->
        </div>
    </main>
</body>

</html>
