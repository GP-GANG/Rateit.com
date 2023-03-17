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
   <link rel="stylesheet" href="css\comp_review_page.css">
   <link
      href="https://github.com/GP-GANG/rateit.github.io/blob/b32152f01d68b11cb33f47d2f5d42ea30e8e6d04/CODE/css/headerstyle.css"
      rel="stylesheet">
</head>

<body>
   <div class="container">
      <div class="logo">
          <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=cmp.getCOMPANY_NAME()%>">
         <p class="company_text"><%=cmp.getCOMPANY_NAME() %></p>
      </div>
      <div class="overall-rating">
         <p class="text"><b>Overall Rating:</b></p>
         <div id="uper-star">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
         </div>
      </div>

      <div class="description">‎<%=cmp.getCOMPANY_DESC() %></div>
      <!-- <button class="Read-more_btn" id="btn1" onclick="moreContent('showContent','btn1')">Show More</button> -->

      <div class="c-service-static c-service">
         <table>
             <%for(Company_services e : list1){%>
            <tr>
               <td><%=e.getCOMPANY_SERVICES() %></td>
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
            </tr>
            <%}%>
<!--
            <tr>
               <td> Bills and Recharge </td>
               <td>
                  <input type="radio" name="s02" id="staticr21" value="1"> <label for="staticr11"><i
                        class="fa-regular fa-star"></i></label>
                  <input type="radio" name="s02" id="staticr22" value="2"> <label for="staticr12"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s02" id="staticr23" value="3"> <label for="staticr33"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s02" id="staticr24" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s02" id="staticr25" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>

               </td>
            </tr>


            <tr>
               <td> QR code scanning </td>
               <td>
                  <input type="radio" name="s03" id="staticr31" value="1"> <label for="staticr11"><i
                        class="fa-regular fa-star"></i></label>
                  <input type="radio" name="s03" id="staticr32" value="2"> <label for="staticr12"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s03" id="staticr33" value="3"> <label for="staticr33"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s03" id="staticr34" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s03" id="staticr35" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>

               </td>
            </tr>


            <tr>
               <td> UPI Transaction </td>
               <td>
                  <input type="radio" name="s04" id="staticr41" value="1"> <label for="staticr11"><i
                        class="fa-regular fa-star"></i></label>
                  <input type="radio" name="s04" id="staticr42" value="2"> <label for="staticr12"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s04" id="staticr43" value="3"> <label for="staticr33"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s04" id="staticr44" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s04" id="staticr45" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
            </tr>


            <tr>
               <td> Travels-Movie Tickets </td>
               <td>
                  <input type="radio" name="s05" id="staticr51" value="1"> <label for="staticr11"><i
                        class="fa-regular fa-star"></i></label>
                  <input type="radio" name="s05" id="staticr52" value="2"> <label for="staticr12"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s05" id="staticr53" value="3"> <label for="staticr33"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s05" id="staticr54" value="4"> <label for="staticr14"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="s05" id="staticr55" value="5"> <label for="staticr15"> <i
                        class="fa-regular fa-star"></i> </label>

               </td>
            </tr>-->

         </table>
      </div>
      <br>
      <hr>
      <br>
      <span class="Text-1">Review Your Experiance About Company:</span>

      <form action="">
         <div class="c-service-dynamic c-service">
            <table>
               <%for(Company_services e : list1){%>
            <tr>
               <td><%=e.getCOMPANY_SERVICES() %></td>
               <td>
                  <input type="radio" name="c1" id="dynamic1" value="1"> <label for="dynamic1"><i
                        class="fa-regular fa-star"></i></label>
                  <input type="radio" name="c1" id="dynamic2" value="2"> <label for="dynamic2"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="c1" id="dynamic3" value="3"> <label for="dynamic3"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="c1" id="dynamic4" value="4"> <label for="dynamic4"> <i
                        class="fa-regular fa-star"></i> </label>
                  <input type="radio" name="c1" id="dynamic5" value="5"> <label for="dynamic5"> <i
                        class="fa-regular fa-star"></i> </label>
               </td>
            </tr>
            <%}%>
            </table>
            <div id="comm-box">
               <textarea id="txt-area" rows="8" cols="125"
                  placeholder="Comment your opinion about the company..."></textarea> </td>
            </div>
         </div>

         <div id="btn-box">
            <button class="btn-sub">Submit Review</button>
            <input class="btn-sub" type="reset">
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
   </script>
</body>

</html>
