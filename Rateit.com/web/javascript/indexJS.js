            $(document).ready(function(){ 
                $("#profile_div").load("profile.jsp");
                document.getElementById("search-logo").style.left = document.getElementById("search").getBoundingClientRect().x + 40 +"px";
                $("#loginCheck").css("display","none");
                    $("#loginCheckContainer").css({"zIndex":"-2", "opacity":"0"});
                $("#alertClose").click(function(){
                    $("#loginCheck").css("display","none");
                    $("#loginCheckContainer").css({"zIndex":"-2", "opacity":"0"});
                });
                
                
            });

            $(".compareBtn").click(function(){
                
                // Ajax call to check for validation
                let query = this.value;
                $.post("CheckForLogin",function(response){
                    console.log(response)
                    if(response == false){
                    $("#loginCheck").css("display","flex");
                    $("#loginCheckContainer").css({"zIndex":"2", "opacity":"1"});
                    }
                    else{
                        
                        window.location.assign("poll_review_page.jsp?a="+query);
                    }
                }).fail(function(){
                    alert("Some error occured");
                })
            });
            let searchlogo = 750;

//            window.addEventListener("DOMContentLoaded", () => {
//
//                sessionStorage.setItem("RateitLOGGEDIN", "true")
//                if (sessionStorage.getItem("RateitLOGGEDIN") == "true") {
//                    searchlogo = 1040;
//                    document.getElementById("header_button").style.display = "none";
//                    document.getElementById("search").style.marginLeft = "80px";
//                    document.getElementById("navTool").style.marginLeft = "220px";
//                    document.getElementById("search-logo").style.position = "absolute";
//                    document.getElementById("search-logo").style.left = searchlogo + "px";
//                }
//            })

            const searchLogo = document.getElementById("search-logo");
            
            searchLogo.addEventListener("click", () => {
                document.getElementById("search-logo").style.left = document.getElementById("search").getBoundingClientRect().right +"px";
                document.querySelector("#search input").style.opacity = "1";
            })

            const profileBtn = document.getElementById("profile_btn");

            profileBtn.addEventListener("click", showProfile);
            
            function showProfile(){
                document.querySelector(".container").style.opacity = "0.2";
                document.getElementById("profile_div").style.display = "block";
            }


            // console.log(profileClose)
            function closeProfile() {
                document.querySelector(".container").style.opacity = "1";
                document.getElementById("profile_div").style.display = "none";
            }

            function saveProfile() {
                let arr = document.getElementsByClassName("profile_input");
                // console.log(arr);
                for (var i = 0; i < arr.length; i++) {
                    arr[i].setAttribute("disabled", "true");
                    // console.log(arr[i])
                }
                $("#Profile_loading").show("slow");
                updateData();
                document.getElementById("save_btn").style.display = "none";
                document.getElementById("newImageContainer").style.display = "none";
            }

            function editProfile() {
                let arr = document.getElementsByClassName("editable");
                 console.log(arr);
                document.getElementById("save_btn").style.display = "block";
                for (var i = 0; i < arr.length; i++) {
                    arr[i].removeAttribute("disabled");
                    // console.log(arr[i])
                }
                                
                document.getElementById("profile_edit_btn").style.display = "none";
                document.getElementById("newImageContainer").style.display = "table-row";
            }


        
            function updateData(){
                const name = document.getElementById("name").value;
                const image = document.getElementById("get_profile_pic");
                
                let form = new FormData();
                if(image.files.length !== 0)
                form.append('profile_image',image.files[0]);
                form.append('name',name);
                
                let xhr = new XMLHttpRequest();
                xhr.open("post","Update_user_profile");
                xhr.send(form);
                
                xhr.upload.onerror = function(){
                    console.log("some Error occured")
                }
                xhr.upload.onloadend = function(){
                    console.log("success")
                }
                xhr.onreadystatechange = function(){
                    if(xhr.readyState == 4){
                        $("#Profile_loading").hide("slow");
                        document.getElementById("profile_edit_btn").style.display = "block";
                        document.getElementById("save_btn").style.display = "none";
                        alert("Profile Updated");
                        window.location.assign(window.location.href);
                    }
                }
            }