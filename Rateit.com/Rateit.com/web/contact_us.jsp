<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <title>Contact Us | rateit.com</title>
    <link rel="stylesheet" href="css/contact_us.css">
</head>

<body>
    <h1 id="heading">CONTACT US</h1>
    <div id="main_cont">
        <div id="cont1">
            <div id="add-box1">
                <div class="box">
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/map.png?raw=true" alt="location">
                    <h1>LOCATION</h1>
                    <p>Government Polytechnic, Ahmedabad</p>
                </div>
                <div class="box">
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/phone.png?raw=true" alt="phone">
                    <h1>PHONE NUMBER</h1>
                    <p>+91 9726098230</p>
                </div>
            </div>
            <div id="add-box2">
                <div class="box">
                    <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/email.png?raw=true" alt="email">
                    <h1>EMAIL</h1>
                    <p>rateit.contact@gmail.com</p>
                </div>
            </div>
        </div>
        <div id="cont2">
            <div id="content">
                <form action="https://formspree.io/f/mqkobyvd" method="post">
                    <input class="name" type="text" id="username" name="username" placeholder="Name :">
                    <input class="name" type="text" id="subject" name="subject" placeholder="Subject :"><br>
                <input type="email" name="email" id="email" placeholder="E-mail Address :"><br>
                <textarea id="message" name="textarea" placeholder="Description . . ."></textarea><br>
                <input type="submit" id="my-form-button" value="Submit">
                <input type="reset" value="reser">
                
                <input type="text" id="captcha-code">
                
                </form>
            </div>
        </div>    
    </div>
    
    <script>
//        const LIMIT_MAIL = 3;
//        let maxLimit = LIMIT_MAIL;
//        window.addEventListener("load", ()=>{
//            sessionStorage.setItem("maxLimit",maxLimit) 
//            console.log(sessionStorage.getItem("maxLimit"))
//        });
//        
//        function checkLimit(){
//            
//            
//            maxLimit = sessionStorage.getItem("maxLimit");
//            if(maxLimit <= 0){
//                alert("Maximum limit reached.<br><b>try to refresh the session</b>");
//                return false;
//        }
//            else{
//                const username = document.getElementById("username").value;
//                const subject = document.getElementById("subject").value;
//                const email = document.getElementById("email").value;
//                const message = document.getElementById("message").value;
//                
//                $.post("https://formspree.io/f/mqkobyvd",
//                {"username":username,
//                 "subject":subject,
//                 "email":email,
//                 "message":message});
//                sessionStorage.setItem("maxLimit",--maxLimit);
//            }
//        }
        
    </script>
</body>
</html>
