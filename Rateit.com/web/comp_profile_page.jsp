<%@page import="rateit.entities.Company"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   Company cmp = (Company)session.getAttribute("Company");
   if(cmp == null){
    response.sendRedirect("comp_login.jsp");
    }

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conpany Profile | rateit.com</title>
    <link rel="stylesheet" href="css\comp_profile_page.css">
</head>

<body>
    <body>
        <div class="profile_container">
            <div class="block">
                <h1>COMPANY PROFILE</h1>
                <div class="imag">
                    <img
                        src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp.getCOMPANY_NAME()%>">
                </div>
                <table rules="rows">
                    <tr>
                        <td class="t1">Company Name :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cmp.getCOMPANY_NAME()%>"
                                disabled> </td>
                    </tr>
                    <tr>
                        <td class="t1">Company ID :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cmp.getCOMPANY_ID()%>" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Email ID :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cmp.getCOMPANY_MAIL()%>"
                                disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Category :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cmp.getCATEGORY() %>" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Joining Date :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cmp.getJOIN_DATE().toString()%>" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Polls Registered :</td>
                        <td class="t2"><input type="text" class="profile_input" value="<%=cmp.getPOLL() %>" disabled></td>
                    </tr>
                </table>
                <a href="#"><button class="profile_btn" onclick="editProfile()" id="profile_edit_btn">Edit
                        Profile</button></a>
                <button class="profile_btn" onclick="saveProfile()" id="profile_save_btn"> Save Profile </button>
                <button class="profile_btn" onclick="closeProfile()" id="profile_close_btn"> close </button>
            </div>
        </div>
</body>

</html>
