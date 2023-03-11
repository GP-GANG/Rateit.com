<%@page import="rateit.entities.Company_services"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dbclasses.Company_services_database"%>
<%@page import="rateit.entities.Company"%>
<%@page import="dbclasses.Company_database"%>
<%@page import="rateit.entities.Poll"%>
<%@page import="rateit.helper.ConnectionProvider"%>
<%@page import="dbclasses.Poll_database"%>
<%@page import="rateit.entities.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Customer customer = (Customer) session.getAttribute("Customer");
    if (customer == null) {
        response.sendRedirect("LogIn&SignUp.jsp");
    }
    int id = Integer.parseInt(request.getParameter("a"));

    Poll_database pd = new Poll_database(ConnectionProvider.getConnection());
    Poll p = pd.getPoll(id);
    Company_database cd = new Company_database(ConnectionProvider.getConnection());
    Company cmp1 = cd.getCompanyByName(p.getCOMPANY1());
    Company cmp2 = cd.getCompanyByName(p.getCOMPANY2());
    
    //getting services...
    Company_services_database csd = new Company_services_database(ConnectionProvider.getConnection());
    ArrayList<Company_services> list1 = csd.getAllCategories(cmp1.getCOMPANY_ID());
    ArrayList<Company_services> list2 = csd.getAllCategories(cmp2.getCOMPANY_ID());
    int temp1 = 1;
    int temp2 = 11;
%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><%=p.getCOMPANY1()%> VS <%=p.getCOMPANY2()%> | Rateit.com</title>
        <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/poll_review_page.css">
        <link
            href="https://github.com/GP-GANG/rateit.github.io/blob/b32152f01d68b11cb33f47d2f5d42ea30e8e6d04/CODE/css/headerstyle.css"
            rel="stylesheet">
    </head>

    <body>

        <form action="ReviewSubmit?POLL_ID=<%=p.getPOLL_ID()%>" method="post">
            <main class="container">
                <section id="section1">

                    <div class="logo-name-box">
                        <div>
                            <div class="img_container">
                                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=p.getCOMPANY1()%>"
                                     height="80px" width="80px" class="c-logo">
                            </div>

                            <span><%=p.getCOMPANY1()%></span>
                        </div>

                        <div class="box" align="right">
                            <b id="b1">3.9</b>
                            <i class="fa-solid fa-star" id="i1"></i>
                            <p class="spa">Ratings: 23,43,122</p>
                            <p class="spa">Reviews: 20,42,232</p>
                        </div>
                    </div>

                    <div class="description">
                        ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ <%=cmp1.getCOMPANY_DESC()%>
                    </div>
                    <div class="c-service">
                        <h1>Give Reviews</h1>
                        <table>
                            <%for(Company_services cmp1_s : list1){%>
                            <tr>
                                <td><%=cmp1_s.getCATEGORY()%></td>
                                <td>
                                    <div id="r1">
                                        <input type="checkbox" name="c<%=temp1%>" id="c1r<%=temp1%>s1" value="1"> <label for="c1r<%=temp1%>s1"><i class="fa-regular fa-star"></i></label>
                                        <input type="checkbox" name="c<%=temp1%>" id="c1r<%=temp1%>s2" value="2"> <label for="c1r<%=temp1%>s2"> <i class="fa-regular fa-star"></i>
                                        </label>
                                        <input type="checkbox" name="c<%=temp1%>" id="c1r<%=temp1%>s3" value="3"> <label for="c1r<%=temp1%>s3"> <i class="fa-regular fa-star"></i>
                                        </label>
                                        <input type="checkbox" name="c<%=temp1%>" id="c1r<%=temp1%>s4" value="4" on> <label for="c1r<%=temp1%>s4"> <i class="fa-regular fa-star"></i>
                                        </label>
                                        <input type="checkbox" name="c<%=temp1%>" id="c1r<%=temp1%>s5" value="5" on> <label for="c1r<%=temp1%>s5"> <i class="fa-regular fa-star"></i>
                                        </label>
                                    </div>
                                </td>
                            </tr>
                            <%temp1++;
                                    }%>
                        </table>
                        <div id="comm-box">
                            <textarea id="txt-area" rows="8" cols="69" name="review1" placeholder="Comment your opinion about the company..."></textarea>
                        </div>
                    </div>

                </section>


                <section id="section2">
                    <div class="logo-name-box">
                        <div>
                            <div class="img_container">
                                <img src="HelperJSP/DisplayCmpImage.jsp?name=<%=p.getCOMPANY2()%>"
                                     height="80px" width="80px" class="c-logo">
                            </div>

                            <span><%=p.getCOMPANY2()%></span>
                        </div>

                        <div class="box" align="right">
                            <b id="b1">3.9</b>
                            <i class="fa-solid fa-star" id="i1"></i>
                            <p class="spa">Ratings: 23,43,433</p>
                            <p class="spa">Reviews: 23,23,432</p>
                        </div>
                    </div>

                    <div class="description">
                        ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ ‎ <%=cmp2.getCOMPANY_DESC()%>
                    </div>

                    <div class="c-service">
                        <h1>Give Reviews</h1>
                        <table>
                               <%for(Company_services cmp2_s : list2){%>
                            <tr>
                                <td><b><%=cmp2_s.getCATEGORY()%></b></td>
                                <td>
                                    <div id="r1">
                                        <input type="checkbox" name="c<%=temp2%>" id="c2r<%=temp2%>s1" value="1"> <label for="c2r<%=temp2%>s1"><i class="fa-regular fa-star"></i></label>
                                        <input type="checkbox" name="c<%=temp2%>" id="c2r<%=temp2%>s2" value="2"> <label for="c2r<%=temp2%>s2"> <i class="fa-regular fa-star"></i>
                                        </label>
                                        <input type="checkbox" name="c<%=temp2%>" id="c2r<%=temp2%>s3" value="3"> <label for="c2r<%=temp2%>s3"> <i class="fa-regular fa-star"></i>
                                        </label>
                                        <input type="checkbox" name="c<%=temp2%>" id="c2r<%=temp2%>s4" value="4" on> <label for="c2r<%=temp2%>s4"> <i class="fa-regular fa-star"></i>
                                        </label>
                                        <input type="checkbox" name="c<%=temp2%>" id="c2r<%=temp2%>s5" value="5" on> <label for="c2r<%=temp2%>s5"> <i class="fa-regular fa-star"></i>
                                        </label>
                                    </div>

                                </td>
                            </tr>

                           <%temp2++;}%>
                        </table>
                        <div id="comm-box">
                            <textarea id="txt-area" rows="8" cols="69" name="review2" placeholder="Comment your opinion about the company..."></textarea>
                        </div>

                </section>

                <div id="btn-box">
                    <button type="submit"class="btn-sub">Submit Review</button>
                    <button class="btn-sub" type="reset">Reset</button>
                </div>
                <!-- <button class="Read-more_btn" id="btn2" onclick="moreContent('showContent2','btn2')">Show -->
                <!-- More</button> -->
            </main>
        </form>

        <!-- <script type="text/javascript">
    
            window.addEventListener("load", () => {
                document.getElementById("showContent").style.display = "none";
                document.getElementById("showContent2").style.display = "none";
            })
    
            function moreContent(extraContent, btn) {
                if (document.getElementById(extraContent).style.display == "none") {
                    document.getElementById(extraContent).style.display = "inline";
                    document.getElementById(btn).innerText = "Show Less";
                }
                else {
                    document.getElementById(extraContent).style.display = "none";
                    document.getElementById(btn).innerText = "Show More";
                }
            } -->

        <script>

            let rates = new Array(11);
            const rated = `fa-solid fa-star`;
            const notRated = `fa-regular fa-star`;

            $(document).ready(function () {


                rates[0] = 0;
                rates[1] = document.getElementsByName('c1');
                rates[2] = document.getElementsByName('c2');
                rates[3] = document.getElementsByName('c3');
                rates[4] = document.getElementsByName('c4');
                rates[5] = document.getElementsByName('c5');
                rates[6] = document.getElementsByName('c11');
                rates[7] = document.getElementsByName('c12');
                rates[8] = document.getElementsByName('c13');
                rates[9] = document.getElementsByName('c14');
                rates[10] = document.getElementsByName('c15');


                console.log(rates)
                $("input").change(function (a) {

                    var index = a.target.name.substr(1, 2);
                    index = index > 10 ? index -5 : index;
                    console.log(index)

                    for (var i = 0; i < a.target.value; i++) {
                        rates[index][i].labels[0].children[0].setAttribute("class", rated);
                    }
                    for (var i = rates[index].length - 1; i >= a.target.value; i--) {
                        rates[index][i].labels[0].children[0].setAttribute("class", notRated);
                    }
                    // retes[i]
                });
            });

  // 	rates.forEach(function(val,index){
  // 		val.addEventListener("change",appChange)
  // 	});

  // 	function applyChange(){
  // 		for (var i = 0; i < rates.length; i++){
  // 			if (rates[i].checked == true) {
  // 				rates[i].labels[0].innerHTML = rated;
  // 			}
  // 			else{
  // 				rates[i].nextElementSibling.innerHTML = notRated;
  // 			}
  // 	}
  // }

  // 	function appChange(a){

  // 		for (var i = 0; i < rates.length; i++) {
  // 			if (rates[i] == a.target) { continue;}
  // 			rates[i].checked = false;			
  // 		}

  // 		for (var i = 0; i < rates.length; i++) {
  // 			if (rates[i] == a.target) { break;}
  // 			rates[i].checked = true;			
  // 		}

  // 		applyChange();
  // 	}
        </script>

    </body>

</html>
