<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>TCS</title>
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
         <img src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/gpay.png?raw=true">
         <p class="company_text">Google Pay</p>
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

      <div class="description">‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ Google Pay is a digital wallet and payment platform from
         Google. It enables users to pay
         for transactions with Android devices in-store and on supported websites, mobile apps and Google services, like
         the Google Play Store. The Google Pay service works with hundreds of banks and payment providers. Specifically,
         cards from Visa, MasterCard, Discovery and American Express are called out for support. Users should check with
         their individual bank if they are unsure about its compatibility with Google Pay. Additionally, the Google Pay
         user website maintains a list of supported banks by country.</div>
      <!-- <button class="Read-more_btn" id="btn1" onclick="moreContent('showContent','btn1')">Show More</button> -->

      <div class="c-service-static c-service">
         <table>
            <tr>
               <td> Money Transfer </td>
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
            </tr>

         </table>
      </div>
      <br>
      <hr>
      <br>
      <span class="Text-1">Review Your Experiance About Company:</span>

      <form action="">
         <div class="c-service-dynamic c-service">
            <table>
               <tr>
                  <td> Money Transfer </td>
                  <td>
                     <input type="radio" name="c1" id="c1r1s1" value="1"> <label for="c1r1s1"><i
                           class="fa-regular fa-star"></i></label>
                     <input type="radio" name="c1" id="c1r1s2" value="2"> <label for="c1r1s2"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c1" id="c1r1s3" value="3"> <label for="c1r1s3"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c1" id="c1r1s4" value="4"> <label for="c1r1s4"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c1" id="c1r1s5" value="5"> <label for="c1r1s5"> <i
                           class="fa-regular fa-star"></i> </label>
                  </td>
               </tr>

               <tr>
                  <td> Bills and Recharge </td>
                  <td>
                     <input type="radio" name="c2" id="c1r2s1" value="1"> <label for="c1r2s1"><i
                           class="fa-regular fa-star"></i></label>
                     <input type="radio" name="c2" id="c1r2s2" value="2"> <label for="c1r2s2"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c2" id="c1r2s3" value="3"> <label for="c1r2s3"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c2" id="c1r2s4" value="4"> <label for="c1r2s4"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c2" id="c1r2s5" value="5"> <label for="c1r2s5"> <i
                           class="fa-regular fa-star"></i> </label>

                  </td>
               </tr>


               <tr>
                  <td> QR code scanning </td>
                  <td>
                     <input type="radio" name="c3" id="c1r3s1" value="1"> <label for="c1r3s1"><i
                           class="fa-regular fa-star"></i></label>
                     <input type="radio" name="c3" id="c1r3s2" value="2"> <label for="c1r3s2"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c3" id="c1r3s3" value="3"> <label for="c1r3s3"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c3" id="c1r3s4" value="4"> <label for="c1r3s4"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c3" id="c1r3s5" value="5"> <label for="c1r3s5"> <i
                           class="fa-regular fa-star"></i> </label>

                  </td>
               </tr>


               <tr>
                  <td> UPI Transaction </td>
                  <td>
                     <input type="radio" name="c4" id="c1r4s1" value="1"> <label for="c1r4s1"><i
                           class="fa-regular fa-star"></i></label>
                     <input type="radio" name="c4" id="c1r4s2" value="2"> <label for="c1r4s2"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c4" id="c1r4s3" value="3"> <label for="c1r4s3"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c4" id="c1r4s4" value="4"> <label for="c1r4s4"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c4" id="c1r4s5" value="5"> <label for="c1r4s5"> <i
                           class="fa-regular fa-star"></i> </label>

                  </td>
               </tr>


               <tr>
                  <td> Travels-Movie Tickets </td>
                  <td>
                     <input type="radio" name="c5" id="c1r5s1" value="1"> <label for="c1r5s1"><i
                           class="fa-regular fa-star"></i></label>
                     <input type="radio" name="c5" id="c1r5s2" value="2"> <label for="c1r5s2"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c5" id="c1r5s3" value="3"> <label for="c1r5s3"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c5" id="c1r5s4" value="4"> <label for="c1r5s4"> <i
                           class="fa-regular fa-star"></i> </label>
                     <input type="radio" name="c5" id="c1r5s5" value="5"> <label for="c1r5s5"> <i
                           class="fa-regular fa-star"></i> </label>
                  </td>
               </tr>
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


         rates[0] = 0;
         rates[1] = document.getElementsByName("c1");
         rates[2] = document.getElementsByName("c2");
         rates[3] = document.getElementsByName("c3");
         rates[4] = document.getElementsByName("c4");
         rates[5] = document.getElementsByName("c5");

         var filledStar = "fa-solid fa-star";
         var emptyStar = "fa-regular fa-star";

         console.log(rates)
         $("input").change(function (a) {

            var index = a.target.name.substr(1);
            console.log(index)

            for (var i = 0; i < a.target.value; i++) {
               rates[index][i].labels[0].children[0].setAttribute("class", filledStar);
            }
            for (var i = rates[index].length - 1; i >= a.target.value; i--) {
               rates[index][i].labels[0].children[0].setAttribute("class", emptyStar);
            }
            // retes[i]
         });
      });
   </script>
</body>

</html>
