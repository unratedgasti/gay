<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container" style="background-color:white">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
   

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
       <div style="text-align:center">
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
       </div>
         <div style="text-align:center">
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
       </div>
         <div style="text-align:center">
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
         Daniel<br>
       </div>
      </div>

    <?php
        for($i = 0; $i < 5; $i++){
       echo '<div class="item ">
       <div style="text-align:center">
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
         Daniel$i<br>
       </div>
      </div>
';
        }
    ?>
       <br>
    </div>
    <br>
<div>
<br>
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
</div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>

