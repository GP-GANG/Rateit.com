
<%@page import="rateit.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
    <title>Rate It</title>
    <style>
        
        @import url('https://fonts.googleapis.com/css2?family=Unbounded:wght@300&display=swap');

        * {
            margin: 0;
            padding: 0;
        }

        .main_container {
            height: 100vh;
            width: 100vw;
            background-color: #a3acada6;
            position: absolute;

        }

        .form-box {
            height: 420px;
            width: 400px;
            background-color: white;
            position: relative;
            margin: 6% auto;
            padding: 5px;
            overflow: hidden;
            transition: 0.3s;
        }

        .button-box {
            width: 400px;
            height: 30px;
            position: relative;
            /* box-shadow: 00 10px 9px #ff61241f; */
            border-radius: 3px;
            margin-top: 15px;
        }

        .upper-btn {
            padding: 7.6px 77.7px;
            position: relative;
            cursor: pointer;
            background: transparent;
            border: 0;
            outline: none;
            font-size: 13px;
            cursor: pointer;
        }

        #btn {
            top: 0;
            left: 0;
            position: absolute;
            width: 200px;
            height: 100%;
            background: linear-gradient(to right, #ff105f, #ffad06);
            border-radius: 20px;
            transition: .5s;
        }

        .input-group {
            top: 80px;
            position: absolute;
            width: 280px;
            margin-left: 9px;
            transition: .3s;
        }

        .inputs {
            margin-top: 5px;
            margin-bottom: 12px;
            width: 300px;
            height: 25px;
            margin-left: 35px;
            border-radius: 5px;
            font-size: 12px;
            font-family: 'Unbounded', cursive;
            letter-spacing: 1px;
            font-weight: bolder;
        }

        #Uname,
        #Upassword,
        #Ucpassword,
        #Umail,
        #RUpassword,
        #RUcpassword {
            border: 1.5px solid gray;
            padding-left: 10px;
            background-color: #a3acada6;
        }

        #fpassword {
            margin-top: 3vh;
            text-decoration: none;
            color: rgb(255, 0, 0);
            margin-bottom: 12px;
            width: 300px;
            height: 25px;
            margin-left: 35px;
            border-radius: 5px;
            font-size: 12px;
            font-family: 'Unbounded', cursive;
            letter-spacing: 1px;
            font-weight: bolder;
        }

        #fpassword:hover {
            color: black;
        }

        #submit_btn {
            height: 35px;
            width: 312px;
            margin-top: 10px;
            background-color: rgb(237, 75, 75);
            border: 1.5px solid gray;
            color: white;
            letter-spacing: 2px;
            cursor: pointer;
        }

        #submit_btn:hover {
            background-color: rgb(145, 13, 13);
        }

        #fpassword:hover {
            color: rgb(145, 13, 13);
        }

        #low_lbl {
            letter-spacing: 0px;
            margin-left: 78px;
        }

        .lower-btn {
            padding-top: 7px;
            background-color: white;
            border: none;
            color: #3d3ddc;
            font-size: 12px;
            cursor: pointer;
            /* font-weight: 400; */
            font-family: 'Unbounded', cursive;
        }

        .social-media {
            font-size: 32px;
            margin-left: 115px;
            margin-top: 30px;

        }

        .social-media i {
            padding-right: 10px;
            cursor: pointer;
            color: black;
        }

        .social-media i:hover {
            color: red;
        }

        #Login {
            left: 0px;
        }



        #Signup {
            left: 420px;
        }

        #umail {
            background-color: #a3acada6;
            width: 100px;
        }

        .Error {
            margin-left: 2.5vw;
            margin-top: -1vh;
            font-size: 15px;
            color: #f31b1b;
            font-weight: 600;
        }

        #alertPass {
            margin-bottom: 2vh;
        }

        /* -------------For Phone ------------------------ */
        @media (min-width:330px) and (max-width:419px) {
            .main_container {
                height: 125vh;
                width: 415px;
            }

            .form-box {
                width: 320px;
                margin-top: 20vh;
                margin-left: 10vw;
            }

            .inputs {
                width: 230px;
                height: 25px;
            }

            #submit_btn {
                height: 35px;
                width: 240px;
            }

            .button-box {
                width: 320px;
                height: 30px;
                margin-top: 15px;
            }

            .upper-btn {
                padding: 7px 55px;
                font-size: 13px;
            }

            #btn {
                width: 150px;
                height: 100%;
            }

            #low_lbl {
                margin-left: 60px;
            }

            .social-media {
                margin-left: 90px;
            }

            .Error {
                margin-left: 9vw;
                margin-top: -1vh;
                font-size: 15px;
                color: #f31b1b;
                font-weight: 400;
            }

            #alertPass {
                margin-bottom: 2vh;
            }
        }

        @media (min-width:200px) and (max-width:329px) {
            .main_container {
                height: 122vh;
                width: 326px;
            }

            .form-box {
                width: 290px;
                height: 420px;
                margin-top: 15vh;
                margin-left: 4vw;
            }

            .inputs {
                width: 200px;
                height: 25px;
            }

            #submit_btn {
                height: 35px;
                width: 210px;
            }

            .button-box {
                width: 290px;
                height: 30px;
                margin-top: 15px;
            }

            .upper-btn {
                padding: 7px 50px;
                font-size: 13px;
            }

            #btn {
                width: 145px;
                height: 100%;
            }

            #low_lbl {
                margin-left: 40px;
            }

            .social-media {
                margin-left: 65px;
            }

            .Error {
                margin-left: 12vw;
                margin-top: -1vh;
                font-size: 15px;
                color: #f31b1b;
                font-weight: 400;
            }
        }

        /* -------------- For Tablet And IPad ---------------------------- */
        @media (min-width:420px) and (max-width:770px) {
            .form-box {
                height: 420px;
                width: 400px;
                margin: 22vh auto;
            }

            .Error {
                margin-left: 5.5vw;
                margin-top: -1vh;
                font-size: 15px;
                color: #f31b1b;
                font-weight: 600;
            }
        }

        /* -------------- For Laptop  ---------------------------- */
        @media (min-width:771px) and (max-width:1030px) {
            .form-box {
                margin: 15vh auto;
            }

            .Error {
                margin-left: 4vw;
                margin-top: -1vh;
                font-size: 15px;
                color: #f31b1b;
                font-weight: 600;
            }
        }

        /* -------------- For Desktop And Large-screen ---------------------------- */
        @media (min-width:1031px) and (max-width:1500px) {
            .form-box {
                margin: 20vh auto;
            }

            .Error {
                margin-left: 3vw;
                margin-top: -1vh;
                font-size: 15px;
                color: #f31b1b;
                font-weight: 600;
            }

            #alertPass {
                margin-bottom: 2vh;
            }
        }
    </style>
</head>

<body>
    <div class="main_container">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="upper-btn" onclick="changeBack()">Log In</button>
                <button type="button" class="upper-btn" onclick="changeBack()">Register</button>
            </div>
            <div id="Login" class="input-group">


                <form action="LogIn" method="post" onsubmit="return validateLogin()">
                    <label for="Uname" class="inputs"> UserId or Email : </label> <br>
                    <input class="inputs" type="text" id="Uname" name="name" tabindex="1" placeholder="E.x. : user#123">
                    <div class="Error" id="alertUname"></div>
                    <br>

                    <label for="Uname" class="inputs"> Password : </label> <br>
                    <input class="inputs" type="password" id="Upassword" name="password" tabindex="2"><br>
                    <div class="Error" id="alertPass"></div>

                    <a href="../forgot/forgotpass.html" class="inputs" id="fpassword">Forgot Password?</a><br>
                    <button id="submit_btn" class="inputs"> submit </button>
                </form>



                <label for="Uname" class="inputs" id="low_lbl"> Not a Member? </label>
                <button type="button" class="lower-btn" onclick="changeBack()"><b> Signup Now</b></button> <br>
<%
    Message message =(Message)session.getAttribute("Message");
    if(message != null){

%>
<p><%=message.getMsg_name() %></p>
<%}
session.removeAttribute("Message");
%>
                <div class="social-media">
                    <a href="https://www.facebook.com/profile.php?id=100088785978857" target="_blank"><i
                            class="fa-brands fa-facebook"></i></a>
                    <a href="https://www.instagram.com/rateit_group/" target="_blank"> <i
                            class="fa-brands fa-instagram"></i></a>
                    <a href="https://stackoverflow.com/users/20854115/rate-it" target="_blank"> <i
                            class="fa-brands fa-stack-overflow"></i></a>
                </div>

            </div>
            <div id="Signup" class="input-group">

                <form action="SignUp" id="register" onsubmit="return validateReg()" method="post">

                    <label for="URname" class="inputs"> Username : </label> <br>
                    <input class="inputs" type="text" id="URname" name="name" tabindex="1">
                    <div class="Error" id="usernameAlert"></div>

                    <label for="URmail" class="inputs"> Email :</label><br>
                    <input type="email" name="email" class="inputs" id="URmail" autocomplete="off" tabindex="2">
                    <div class="Error" id="emailAlert"></div>

                    <label for="URpassword" class="inputs"> Password : </label> <br>
                    <input class="inputs" type="password" id="URpassword" name="password" tabindex="3">
                    <div class="Error" id="alertRPass"></div>

                    <label for="URcpassword" class="inputs"> Confirm Password : </label> <br>
                    <input class="inputs" type="password" id="URcpassword" name="pass" tabindex="4"><br>
                    <div class="Error" id="bothCheck"></div>

                    <input type="submit" name="Login Now" value="Register" id="submit_btn" tabindex="5"
                        class="inputs"><br>
                </form>

                <div class="social-media">
                    <a href="https://www.facebook.com/profile.php?id=100088785978857" target="_blank"><i
                            class="fa-brands fa-facebook"></i></a>
                    <a href="https://www.instagram.com/rateit_group/" target="_blank"> <i
                            class="fa-brands fa-instagram"></i></a>
                    <a href="https://stackoverflow.com/users/20854115/rate-it" target="_blank"> <i
                            class="fa-brands fa-stack-overflow"></i></a>
                </div>

            </div>
        </div>
    </div>


    <script type="text/javascript">

        const upperButtons = document.getElementsByClassName(".upper-btn");
        const buttonBack = document.getElementById('btn');
        let left = 0;
        const login = document.getElementById('Login');
        const signUp = document.getElementById('Signup');
        const container = document.querySelector(".form-box");
        const register = document.getElementById('submit_btn');
        const eAlert = document.getElementById('emailAlert');
        const alertUname = document.getElementById('alertUname');
        const pAlert = document.getElementById('alertPass');
        const passAlert = document.getElementById('alertRPass');
        const bothpass = document.getElementById('bothCheck')

        document.getElementById('Uname').focus();


        window.addEventListener("load",()=>{
            if(sessionStorage.getItem("RateitLOGGEDIN") != "false");
            sessionStorage.setItem("RateitLOGGEDIN","false");
        })
        function changeBack() {
            if (left == 0) {
                buttonBack.style.left = "200px";
                login.style.left = "-420px";
                signUp.style.left = "0px";
                container.style.height = "500px";
                document.getElementById('URname').focus();
                left = 200;
            }
            else {
                buttonBack.style.left = 0 + "px";
                signUp.style.left = "420px";
                login.style.left = "0px";
                document.getElementById('Uname').focus();
                left = 0;
                container.style.height = "420px";
            }
        }

        function validateLogin() {
            // Validation of UserID or Email
            const userName = document.getElementById('Uname').value;
            const pass = document.getElementById('Upassword').value;
            let reg = new RegExp(/@/g);
            if (reg.test(userName) == true) {
                if (validateEmail(userName, alertUname) == true) {
                    console.log("successfully checked");
                }
                else {
                    console.log("enter correct")
                    return false;
                }

            }
            else {
                if (validateUserName(userName) == false)
                    return false;
            }

            if (checkPassword(pass, pAlert) == false)
                return false;
            sessionStorage.setItem("RateitLOGGEDIN","true");
            return true;

        }


        function validateReg() {
            const pass = document.getElementById('URpassword');
            const cpass = document.getElementById('URcpassword');
            /// Validation of user name
            if (checkName() == false)
                return false;

            const toMail = document.getElementById('URmail').value;
            if (validateEmail(toMail, eAlert) == false)
                return false;
            /// Validation of password
            if (checkPassword(pass.value, passAlert) == false)
                return false;

            if (validatePassword() == false)                                                /// Validation of confirm password ;
                return false;                                                 /// Validation of email

               sessionStorage.setItem("RateitLOGGEDIN","true");

            return true;

        }

        function checkName() {
            const name = document.getElementById('URname').value;
            const nameAlert = document.getElementById("usernameAlert");
            let reg = new RegExp(/[^a-z | ^A-Z]/g);

            if (name.length <= 2) {
                nameAlert.innerText = "Please enter with surname";
            }
            if (reg.test(name) == true) {
                nameAlert.innerText = "Name must be in letters";
                return false;
            }
            else
                nameAlert.innerText = "";

        }

        function validateEmail(toMail, emailAlert) {
            if (toMail == "") {
                eAlert.innerText = "Please Enter Your Email";
                return false;
            }
            else {
                const reg = new RegExp(/@/g);
                flag = reg.test(toMail);
                // console.log("Flag value = "+flag)

                if (flag == true) {
                    const index = toMail.indexOf("@");

                    // console.log("index of @ = "+index)
                    if (index > 0) {

                        console.log("test = " + toMail.charAt(0))
                        if (!(toMail.charAt(0) >= 'a' && toMail.charAt(0) <= 'z')) {
                            emailAlert.innerText = "Invalid Email";
                            //alertUname.innerText = "Invalid Email";
                            return false;
                        }

                        console.log("test -1  = " + toMail.indexOf('.'))
                        if (toMail.indexOf('.') != (-1)) {
                            const i = toMail.lastIndexOf('.');

                            console.log("test -2 ")
                            // console.log("index of . = "+i)
                            if (i == (toMail.length - 3) || i == (toMail.length - 4)) {
                                // console.log(toMail.charAt(toMail.length-3))
                                // console.log(toMail.charAt(toMail.length-4))
                                emailAlert.innerText = "";
                                return true;
                            }
                            else {
                                // document.getElementById('Umail').focus()
                                return false;
                            }
                        }//vinay@koshti.com (16) 
                        else {
                            emailAlert.innerText = "Invalid Email"; return false;
                        }
                    }
                    else {
                        emailAlert.innerText = "Invalid Email"
                        // document.getElementById('Umail').focus()
                        return false;
                    }
                }
                else {
                    emailAlert.innerText = "Invalid Email"
                    // document.getElementById('Umail').focus()
                    return false;
                }
            }
        }

        function validateUserName(UserName) {
            let reg = new RegExp(/[^a-zA-Z0-9 | #]/g);

            if (reg.test(UserName) == true) {
                alertUname.innerText = "Please Enter Valid Name";
                return false;
            }

            // console.log(UserName.substring(0,5));

            if (UserName.length <= 5) {
                alertUname.innerText = "Entered Invalid User Name";
                return false;
            }
            if (UserName.substring(0, 5) != "user#") {
                alertUname.innerText = "Invalid UID. Must start with : \"user#\"";
                return false;
            }
            alertUname.innerText = "";
        }

        function checkPassword(pass, pAlert) {


            if (pass.length <= 7) {
                pAlert.innerText = "Password must between 8 to 15 letters";
                return false;
            }
            else if (pass.length >= 8 && pass.length <= 15) {
                var reg = new RegExp(/[$&+,:;=?@#|'<>.-^*()%!]/g);
                var flag = false;
                flag = reg.test(pass);
                console.log("flag = " + flag)

                if (flag == false) {
                    pAlert.innerText = "Please use any special character";
                    return false;
                }
                else {
                    pAlert.innerText = "";

                    var reg = new RegExp(/[0-9]/g);
                    var flag = reg.test(pass);
                    // console.log("flag = "+flag)

                    if (flag == false) {
                        pAlert.innerText = "password must contain digit";
                        return false;
                    }
                    else pAlert.innerText = "";
                }
            }
            else {
                pAlert.innerText = "Length Must not greater than 15";
            }
        }


        function validatePassword() {
            const pass = document.getElementById('URpassword').value;
            const cpass = document.getElementById('URcpassword').value;

            if (pass == "" || cpass == "") {
                bothpass.innerText = "Please Enter The Password";
                return false;
            }
            if (pass == cpass) {
                alert("Account Created Successfully")
                bothpass.innerText = "";
                //window.location.href = "../index.html"
            }
            else {
                document.getElementById('URcpassword').style.borderColor = "red";
                bothpass.innerText = "Both password are not same";
                return false;
            }
        }

    </script>
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script>
        
        $(document).ready(function(){
            $("#submit_btn").click(function(){
                var name = $("#Uname").val();
                var password = $("#Upassword").val();
                
                let obj = { "name" : name, "password": password };
                let conn = $.post("Login.java",obj)
               conn.fail(function(res){
                   $("$alertPass").text(res);
               });
            });
        })
    </script>
</body>

</html>