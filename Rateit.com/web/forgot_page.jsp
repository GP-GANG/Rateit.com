<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </script>
    <title>forgot password | rateit.com</title>
    <link rel="stylesheet" href="css/forgot_page.css">
    <script src="https://smtpjs.com/v3/smtp.js"></script>
</head>

<body>
    <div class="main_container">
        <div class="form-box">

            <div id="Login" class="input-group">
                <h3><b>Forgot Password</b></h3><br>

                <form action="Forgot" method="POST">
                    <label for="Email" class="inputs"> Email : </label><input class="inputs" type="email" id="Uemail"
                        name="email" onkeydown="clearAlert()" required>
                    <span id="emailAlert"></span>
                    <input type="submit" name="OTP" value="Get OTP" id="submit_btn1" class="inputs"><br><br>


                    <label for="Uname" class="inputs"> OTP : </label> <br>
                    <input class="inputs" type="password" id="UserOTP" name="pass"><br>
                    <input type="button" name="Login Now" value="Continue" id="submit_btn" class="inputs"
                        ><br>
            </div>


<!--            <div id="Signup" class="input-group">
                <h3><b>New Password</b></h3><br>
                <label for="Uname" class="inputs"> New Password : </label> <br> <input class="inputs" type="text"
                    id="Upassword" name="name" onchange="newCheck()" required>
                <label for="Ucpassword" class="inputs"> Confirm Password : </label> <br> <input class="inputs"
                    type="password" id="Ucpassword" name="pass" required><br>
                <input type="submit" name="Login Now" value="Submit" id="submit_btn" class="inputs"
                    onclick="validatePassword()"><br>
                <span id="passwordAlert"></span>
            </div>
        </form>
        </div>
    </div>-->


    <script src="javascript/forgot.js"></script>
</body>

</html>