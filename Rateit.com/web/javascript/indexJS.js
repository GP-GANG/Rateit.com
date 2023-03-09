            $(document).ready(function(){ 
                $("#profile_div").load("profile.jsp");
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

            const profileBtn = document.getElementById("profile_btn");

            profileBtn.addEventListener("click", () => {
                document.querySelector(".container").style.opacity = "0.2";
                document.getElementById("profile_div").style.display = "block";
            })


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
                                console.log($("#Profile_loading"))
                                console.log("in the edit profile")
                document.getElementById("newImageContainer").style.display = "table-row";
            }

            searchLogo.addEventListener("click", () => {
                document.getElementById("search-logo").style.left = searchlogo + 320 + "px";
                document.querySelector("#search input").style.opacity = "1";
            })
        
            function updateData(){
                const name = document.getElementById("name").value;
                const image = document.getElementById("get_profile_pic");
                
                let form = new FormData();
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
                        alert("Profile Updated");
                        window.location.assign(window.location.href);
                    }
                }
            }