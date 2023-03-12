<%-- 
    Document   : submitted
    Created on : 12-Mar-2023, 12:56:15 pm
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Submitted</title>
    </head>
    <body>
        <h1>Review Submitted Successfully.</h1>
        <span style="font-weight: bolder;"> You will be redirected to home page in <span id="time">4</span></span>
        <script>
            let timeout = 3;
            let iterator = timeout;
            
            window.addEventListener("load",()=>{
                setInterval(updateTime,1000);
                setTimeout(redirect,timeout*1000); 
            });
            
            function updateTime(){
                document.getElementById("time").innerText = iterator--;
            }
            function redirect(){
               window.location.href = "index.jsp";
            }
        </script>
        
    </body>
</html>
