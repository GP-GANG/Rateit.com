<%@page import="java.sql.Blob"%>
<%@page import="rateit.helper.ConnectionProvider"%>
<%@page import="dbclasses.Customer_database"%>
<%@page import="rateit.entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%Customer cus = (Customer) session.getAttribute("Customer");%>
<!DOCTYPE html>
<html lang="en">
    <%
        if (cus == null) {
            response.sendRedirect("LogIn&SignUp.jsp");

        }
        
     Customer_database cd = new Customer_database(ConnectionProvider.getConnection());
     
     Blob blob=cd.getImage(cus.getUSER_ID());
     
    %>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Conpany Profile | rateit.com</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Unbounded:wght@300&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Unbounded', cursive;
            }

            .profile_container {
                background-color: transparent;
                height: 100vh;
                width: 100%;

            }

            .block {
                background-color: white;
                height: 530px;
                width: 650px;
                /*            position: relative;
                padding-top: 15px;
                left:24%;top:5%;*/

            }

            h1 {
                text-align: center;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                font-weight: 500;
                font-size: 30px;
            }

            h2 {
                position: relative;
                top: 200px;
                left: 10%;
                font-size: 18px;
                font-weight: 200;
            }

            .imag img {
                height: 70px;
                width: 100px;
                display: flex;
                position: relative;
                top: 25px;
                left: 42%;
                justify-content: center;
                align-items: center;
            }

            table {
                height: 300px;
                width: 86%;
                margin-left: 7%;
                margin-top: 30px;
                margin-bottom: 40px;
                border-bottom: 1px solid black;
            }

            .t1 {
                width: 40%;
                padding: 0px 10px;
                font-weight: bold;
            }

            .t2 {
                width: 40%;
            }

            .profile_btn {
                height: 30px;
                width: 150px;
                font-size: 16px;
                background-color: rgb(237, 75, 75);
                color: white;
                border: none;
                letter-spacing: 1px;
                display:inline-block;
            }

/*        #profile_edit_btn{
            margin-left: 45%;
        }*/
        #save_btn, #newImageContainer{
            display: none;
        }
        #loading{
            display:none;
        }
        
    </style>
</head>

<body>
    
    <div id="loading">
        <div id="effect"><image src="img/load.gif"></div>
    </div>
    
    <div class="profile_container">
        <div class="block">
            <h1>COMPANY PROFILE</h1>

            <form  enctype="multipart/form-data">
<!--action="Update_user_profile" method="post"--> 
            <div class="imag">
               <%if(blob == null){%>
            <img src="img/profile_photo3.png" id="profile_pic">
            <%}else{%>
             <img src="HelperJSP/DisplayImage.jsp" id="profile_pic">
             <%}%>
            </div>
         
            <table rules="rows">

                <tr>
                    <td class="t1">User Name :</td>
                    <td class="t2"><input type="text" id="name" name="name" class="profile_input editable" value="<%=cus.getUSER_NAME()%>" disabled> </td>
                </tr>
<!--                <tr>
                    <td class="t1">User ID :</td>
                    <td class="t2"><input type="text" name="id" class="profile_input editable"  value="<%=cus.getUSER_ID() %>" disabled></td>
                </tr>-->
                <tr>
                    <td class="t1">Email ID :</td>
                    <td class="t2"><input type="text" name="email" class="profile_input" value="<%=cus.getEMAIL()%>" disabled></td>
                </tr>
<!--                <tr>
                    <td class="t1">Category :</td>
                    <td class="t2"><input type="text" class="profile_input" value="" disabled></td>
                </tr>
-->                
                <tr>
                    <td class="t1">Joined Date :</td>
                    <td class="t2"><input type="text" name="join" class="profile_input" value="<%=cus.getEMAIL()%>" disabled></td>
                </tr>
                <tr>
                    <td class="t1"> Attended Poll :</td>
                    <td class="t2"><input type="text" name="attended_poll" class="profile_input" value="<%=cus.getATTENDED_POLL() %>" disabled></td>
                </tr>
                
                <tr style="display:none" id="newImageContainer">
                    <td > Upload Profile Image : </td>
                    <td> <input type="file" name="profile_image" id="get_profile_pic" class="editable" disabled></td>
                    
                </tr>
                
            </table>
                
            <input type="button" value="Save Profile" class="profile_btn" id="save_btn" onclick="saveProfile()">
            <input type="button" value="Edit Profile" class="profile_btn" onclick="editProfile()" id="profile_edit_btn">
            <input type="button" value="Close" class="profile_btn" onclick="closeProfile()" id="profile_close_btn">


            </div>



            </form>

            </div>




            </body>

            </html>
