<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/TCS.png?raw=true">
                </div>
                <table rules="rows">
                    <tr>
                        <td class="t1">Company Name :</td>
                        <td class="t2"><input type="text" class="profile_input" value="TATA Consaltancy Service"
                                disabled> </td>
                    </tr>
                    <tr>
                        <td class="t1">Company ID :</td>
                        <td class="t2"><input type="text" class="profile_input" value="9726098765" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Email ID :</td>
                        <td class="t2"><input type="text" class="profile_input" value="tataconsaltancyservice@gmail.com"
                                disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Category :</td>
                        <td class="t2"><input type="text" class="profile_input" value="Service Based" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Joining Date :</td>
                        <td class="t2"><input type="text" class="profile_input" value="10/10/2010" disabled></td>
                    </tr>
                    <tr>
                        <td class="t1">Polls Registered :</td>
                        <td class="t2"><input type="text" class="profile_input" value="5" disabled></td>
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
