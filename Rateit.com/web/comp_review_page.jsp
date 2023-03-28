<%@page import="dbclasses.Review_database"%>
<%@page import="rateit.entities.Company_services"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbclasses.Company_services_database"%>
<%@page import="dbclasses.Company_database"%>
<%@page import="rateit.helper.ConnectionProvider"%>
<%@page import="rateit.entities.Customer"%>
<%@page import="rateit.entities.Company"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 String name = request.getParameter("name");
 
Company_database cd = new Company_database(ConnectionProvider.getConnection());
   Company cmp=cd.getCompanyByName(name);
    Company_services_database csd = new Company_services_database(ConnectionProvider.getConnection());
    ArrayList<Company_services> list1 = csd.getAllCategories(cmp.getCOMPANY_ID());
    
Review_database rd = new Review_database(ConnectionProvider.getConnection());
int temp = 1;
int temp2 =1;
%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title><%=cmp.getCOMPANY_NAME()%></title>
   <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
   <link rel="stylesheet" href="css\comp_review_page.css?1">
   <link rel="stylesheet" href="css\login_checker.css?1">
   <link
      href="https://github.com/GP-GANG/rateit.github.io/blob/b32152f01d68b11cb33f47d2f5d42ea30e8e6d04/CODE/css/headerstyle.css"
      rel="stylesheet">
   <link rel="stylesheet" href="css/loading_effect.css">
    <script src="javascript/loading_effect.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
   
</head>

<body>
    
   <div id="preloader">
        <div class="load">
            <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/loading.gif?raw=true" alt="dfd">
        </div>
    </div>
        <div id="loginCheckContainer">
            <div id="loginCheck">
                <span><i class="fa-solid fa-triangle-exclamation" style="font-size:25px; color:red"></i>
                    <br><p style="font-size:13px;" ><b id="errMsg"></b></p></span>
                <section>
                    <a href="LogIn&SignUp.jsp"><button class="header-btn alertBtn" id="errBtn1">Login</button></a>
                    <button class="header-btn alertBtn" id="alertClose">Remind me later</button>
                </section>
            </div>
        </div>
    
   <div class="container">
      <div class="logo">
          <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp.getCOMPANY_NAME()%>">
         <p class="company_text"><%=cmp.getCOMPANY_NAME() %></p>
      </div>
      <div class="overall-rating">
         <p class="text"><b>Rating:</b></p>
         <div id="uper-star">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
         </div>
      </div>

      <div class="description">‎<%=cmp.getCOMPANY_DESC() %></div>
     

      <div class="c-service-static c-service">
         <table>
             <%for(Company_services e : list1){%>
             <%  int i = rd.getRatings(cmp.getCOMPANY_ID(), e.getCOMPANY_SERVICES());
      
               %>
            <tr>
               <td><%=e.getCOMPANY_SERVICES() %></td>
               <%if(i == 0){%>
               <td>
                  <input type="radio" name="s01" id="staticr11" value="1"> <label for="staticr11"><i
                        class="fa-regular fa-star"></i></label>
                  <input type="radio" name="s01" id="staticr12" value="2"> <label for="staticr12"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr13" value="3"> <label for="staticr33"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr14" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr15" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
               <%}%>
               <%if(i == 1){%>
               <td>
                  <input type="radio" name="s01" id="staticr11" value="1"> <label for="staticr11"><i
                        class="fa-solid fa-star"></i></label>
                  <input type="radio" name="s01" id="staticr12" value="2"> <label for="staticr12"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr13" value="3"> <label for="staticr33"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr14" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr15" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
               <%}%>
               <%if(i == 2){%>
               <td>
                  <input type="radio" name="s01" id="staticr11" value="1"> <label for="staticr11"><i
                        class="fa-solid fa-star"></i></label>
                  <input type="radio" name="s01" id="staticr12" value="2"> <label for="staticr12"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr13" value="3"> <label for="staticr33"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr14" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr15" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
               <%}%>
               <%if(i == 3){%>
               <td>
                  <input type="radio" name="s01" id="staticr11" value="1"> <label for="staticr11"><i
                        class="fa-solid fa-star"></i></label>
                  <input type="radio" name="s01" id="staticr12" value="2"> <label for="staticr12"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr13" value="3"> <label for="staticr33"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr14" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr15" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
               <%}%>
               <%if(i == 4){%>
               <td>
                  <input type="radio" name="s01" id="staticr11" value="1"> <label for="staticr11"><i
                        class="fa-solid fa-star"></i></label>
                  <input type="radio" name="s01" id="staticr12" value="2"> <label for="staticr12"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr13" value="3"> <label for="staticr33"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr14" value="4"> <label for="staticr14"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr15" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
               <%}%>
               <%if(i == 5){%>
               <td>
                  <input type="radio" name="s01" id="staticr11" value="1"> <label for="staticr11"><i
                        class="fa-solid fa-star"></i></label>
                  <input type="radio" name="s01" id="staticr12" value="2"> <label for="staticr12"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr13" value="3"> <label for="staticr33"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr14" value="4"> <label for="staticr14"> <i
                        class="fa-solid fa-star"></i> </label>
                  <input type="radio" name="s01" id="staticr15" value="5"> <label for="staticr15"> <i
                        class="fa-solid fa-star"></i> </label>
               </td>
               <%}%>
            </tr>
            <%}%>
         </table>
      </div>
      <br>
      <hr>
      <br>
      <span class="Text-1">Review Your Experiance About Company:</span>


      <form action="IndividualReview?name=<%=name%>" method="post" onsubmit="return checkForLogin(validateSubmit)">

          
         <div class="c-service-dynamic c-service">
            <table>
               <%for(Company_services e : list1){%>
            <tr>
               <td><%=e.getCOMPANY_SERVICES() %></td>
               <td>
                   <input type="radio" name="c<%=temp%>" id="dynamic<%=temp%><%=temp2%>" value="1" required> <label for="dynamic<%=temp%><%=temp2%>"><i
                        class="fa-regular fa-star"></i></label><%temp2++;%>
                  <input type="radio" name="c<%=temp%>" id="dynamic<%=temp%><%=temp2%>" value="2" required> <label for="dynamic<%=temp%><%=temp2%>"> <i
                        class="fa-regular fa-star"></i> </label><%temp2++;%>
                  <input type="radio" name="c<%=temp%>" id="dynamic<%=temp%><%=temp2%>" value="3" required> <label for="dynamic<%=temp%><%=temp2%>"> <i
                        class="fa-regular fa-star"></i> </label><%temp2++;%>
                  <input type="radio" name="c<%=temp%>" id="dynamic<%=temp%><%=temp2%>" value="4" required> <label for="dynamic<%=temp%><%=temp2%>"> <i
                        class="fa-regular fa-star"></i> </label><%temp2++;%>
                  <input type="radio" name="c<%=temp%>" id="dynamic<%=temp%><%=temp2%>" value="5" required> <label for="dynamic<%=temp%><%=temp2%>"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
            </tr>
            <%temp++;}%>
            </table>
            <div id="comm-box">
                <textarea id="txt-area" rows="8" cols="7" name="review"
                  placeholder="Comment your opinion about the company..."></textarea></td>
            </div>
         </div>

         <div id="btn-box">
             <!--<button type="button" class="btn-sub" onclick="checkForLogin()">Submit Review</button>-->
            <input class="btn-sub" type="reset">
            <input class="btn-sub" type="submit">
         </div>
      </form>
   </div>

   <script>
      var rates = new Array(6);
      $(document).ready(function () {

         // array for the dynamic stars
         rates[0] = 0;
         rates[1] = document.getElementsByName("c1");
         rates[2] = document.getElementsByName("c2");
         rates[3] = document.getElementsByName("c3");
         rates[4] = document.getElementsByName("c4");
         rates[5] = document.getElementsByName("c5");

         // star classes
         var filledStar = "fa-solid fa-star";
         var emptyStar = "fa-regular fa-star";

//         console.log(rates)
         $("input").change(function (a) {

            var index = a.target.name.substr(1);
//            console.log(index);
            
            if(index.length != 1){
                return;
            }
            

            // Loop to empty all stars 
            for (var i = 0; i < a.target.value; i++) {
               rates[index][i].labels[0].children[0].setAttribute("class", filledStar);
            }
            
            // loop to fill the selected stars
            for (var i = rates[index].length - 1; i >= a.target.value; i--) {
               rates[index][i].labels[0].children[0].setAttribute("class", emptyStar);
            }
            // retes[i]
         });
      });
      $("#alertClose").click(function(){
                    $("#loginCheck").css("display","none");
                    $("#loginCheckContainer").css({"zIndex":"-2", "opacity":"0"});
                });

      var flag = 0;  
      
    function validateSubmit(){
    console.log(flag);
    if(flag == 1)
        return true;
    else
        return false;
      }
      
       function checkForLogin(valid){
      
      $.post("CheckForLogin", function(response){

//                    console.log(response)
                    if(response == 0){
                    $("#errMsg").text(" To provide review, you have to login first. ");
                    $("#loginCheck").css("display","flex");
                    $("#loginCheckContainer").css({"zIndex":"2", "opacity":"1"}); 
                    flag = 0;
                    }

                    else flag = 1;
        });
        return valid();

      }

   </script>
</body>

</html>
