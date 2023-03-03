<%@page import="rateit.entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%Customer cus = (Customer) session.getAttribute("Customer");%>
<!DOCTYPE html>
<html lang="en">
    <%
        if (cus == null) {
            response.sendRedirect("LogIn&SignUp.jsp");

        }
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
            #save_btn{
                display: none;
            }

        </style>
    </head>

    <body>
        <div class="profile_container">
            <div class="block">
                <h1>USER PROFILE</h1>
                <div class="imag">
                    <img src="img/profile_photo3.png">
                </div>
                <table rules="rows">

                    <tr>
                        <td class="t1">User Name :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cus.getUSER_NAME()%>" disabled> </td>
                    </tr>
                    <tr>
                        <td class="t1">User ID :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cus.getUSER_ID()%>" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Email ID :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cus.getEMAIL()%>" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Polls Registered :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cus.getATTENDED_POLL()%>" disabled></td>
                    </tr>
                </table>
                <button class="profile_btn" id="save_btn" onclick="saveProfile()"> Save Profile </button>
                <button class="profile_btn" onclick="editProfile()" id="profile_edit_btn">Edit Profile</button>
                <button class="profile_btn" onclick="closeProfile()" id="profile_close_btn"> close </button>

            </div>
        </div>



    </body>

</html>