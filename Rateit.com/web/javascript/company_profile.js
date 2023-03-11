console.log("Jay Shree krishna")

$(document).ready(function(){
    let count = 0;
    
    $("#add_item").click(function(){
       let text = $("#add-text").val();
       console.log(text)
       if(text != ""){
           let item = document.createElement("input");
           item.setAttribute("value",text);
           item.setAttribute("type","checkbox");
           item.setAttribute("name","services");
           item.setAttribute("checked","true")
           console.log(item)
           $("#services").append(item)
           $("#services").append(text + "<br>")   
       }
   }) 


});

//function closeProfile() {
//                document.querySelector(".container").style.opacity = "1";
//                document.getElementById("profile_div").style.display = "none";
//            }

            function saveProfile() {
                let arr = document.getElementsByClassName("profile_input");
                // console.log(arr);
                for (var i = 0; i < arr.length; i++) {
                    arr[i].setAttribute("disabled", "true");
                    arr[i].style.border = "none";
                    // console.log(arr[i])
                }
//                $("#Profile_loading").show("slow");
                $("#addnewDiv").hide(500); 
//                updateData();
                document.getElementById("save_btn").style.display = "none";
//                document.getElementById("newImageContainer").style.display = "none";
                $("#profile_edit_btn").show();
            }

            function editProfile() {
                let arr = document.getElementsByClassName("editable");
                 console.log(arr);
//                document.getElementById("save_btn").style.display = "block";
                for (var i = 0; i < arr.length; i++) {
                    arr[i].removeAttribute("disabled");
                    arr[i].style.borderBottom = "1px solid black";
                    // console.log(arr[i])
                }
                  $("#addnewDiv").show(500);         
                document.getElementById("profile_edit_btn").style.display = "none";
                 document.getElementById("save_btn").style.display = "block";
//                document.getElementById("newImageContainer").style.display = "table-row";
            }


        
//            function updateData(){
//                const name = document.getElementById("name").value;
//                const image = document.getElementById("get_profile_pic");
//                
//                let form = new FormData();
//                if(image.files.length !== 0)
//                form.append('profile_image',image.files[0]);
//                form.append('name',name);
//                
//                let xhr = new XMLHttpRequest();
//                xhr.open("post","Update_user_profile");
//                xhr.send(form);
//                
//                xhr.upload.onerror = function(){
//                    console.log("some Error occured")
//                }
//                xhr.upload.onloadend = function(){
//                    console.log("success")
//                }
//                xhr.onreadystatechange = function(){
//                    if(xhr.readyState == 4){
//                        $("#Profile_loading").hide("slow");
//                        document.getElementById("profile_edit_btn").style.display = "block";
//                        document.getElementById("save_btn").style.display = "none";
//                        alert("Profile Updated");
//                        window.location.assign(window.location.href);
//                    }
//                }
//            }
