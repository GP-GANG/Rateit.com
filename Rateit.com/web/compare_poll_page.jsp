<%-- 
    Document   : compare_poll_page
    Created on : 27-Apr-2023, 10:51:34 am
    Author     : neesa
--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Compare Poll</title>
    <script src="https://kit.fontawesome.com/c2a4c35825.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/20a4a662a5.js" crossorigin="anonymous"></script>
    <script
src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>
    <style>
@import url('https://fonts.googleapis.com/css2?family=Unbounded:wght@300&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        #container {
            height: 100%;
            width: 100%;
            border-radius: 5px;
        }

        .main_logo {
            height: 50px;
            width: 130px;
            float: left;
            border-radius: 5%;
            padding: 7px;
            background-color: black;
            margin-top: 10px;
            margin-left: 15px;
        }

        #chart-container{
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px, 0px;
        }

        #myChart{
            background-color: rgba(211, 211, 211, 0.449);
            padding: 50px;
        }

        #check1{
            height: 100px;
            width: 100px;
            background-color: rgba(173, 216, 230, 0.741);
        }
         #check2{
            height: 100px;
            width: 100px;
            background-color: rgba(0, 119, 255, 0.767);
        }

        #comps{
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 40px;
            margin: 30px 0px;
            border: 1px solid black;
        }

        .comp_image{
            margin: 10px 30px;
            height: 100px;
            width: 100px;
            border-radius: 100%;
            border: 1px solid black;
        }
        .box1{
            flex-direction: column;
        }

        .box1 span{
            margin-left: 40px;
            font-size: 30px;
        }
    </style>
</head>

<body>
    <div id="container">
        <div>
        <img class="main_logo"
            src="https://github.com/GP-GANG/rateit.github.io/blob/main/Other%20Files/photos/logo.png?raw=true"
            alt="RATE-IT.COM">
        </div><br><br>

        <div id="comps">
            <div class="box1">
            <img class="comp_image" src="img\tiger.jpeg" alt="image1"><br>
            <span>dilip</span>
        </div>
            VS
            <div class="box1">
            <img class="comp_image" src="img/tiger.jpeg" alt="imag2"><br>
            <span>chapri</span>
        </div>
        </div>
            
    <div id="chart-container">
        <canvas id="myChart" style="width:100%;max-width:1000px"></canvas>
    </div>
    </div>
</body>

<script>

    let color1 = 'rgba(0, 119, 255, 0.767)',color2 = 'rgba(173, 216, 230, 0.741)';
    const dataVal = {
      labels:["12","23","34","Refund","Packaging"],
      datasets:[{
              data:[5,3,5,3,4,0],
              backgroundColor:[color1,color1,color1,color1,color1],
              label: "Facebook"
      },
      {
              data:[3,5,2,2,4,0],
              backgroundColor:[color2,color2,color2,color2,color2],
              label: "Instagram"
      }
    ]
  }
  
    const myChart = new Chart("myChart", 
{
  type: "bar",
  data:dataVal
  
  
});


</script>

</html>