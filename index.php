<!DOCTYPE html>
<html lang="en">
<head>
  <title>Mr. Gay Philippines</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-1.12.4.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    .carousel-inner > .item > img,
    .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
    }

    .btn-custom {
  height: 100%;
    width:100%;
    background: -webkit-linear-gradient(left, pink, black, black, black, black, black, pink); / For Safari 5.1 to 6.0 /
    background: -o-linear-gradient(left, pink, black, black, black, black, black, pink); / For Opera 11.1 to 12.0 /
    background: -moz-linear-gradient(left, pink, black, black, black, black, black, pink); / For Fx 3.6 to 15 /
    background: linear-gradient(to right, pink, black, black, black, black, black, pink); / Standard syntax (must be last) /
     position: fixed;
    top: 0; right: 0; bottom: 0; left: 0; 
    color:white;
}
 .diva{
  margin-top: 10%;
    
}
.carousel-control.left, .carousel-control.right {
    background-image: none
}
  </style>
</head>
<body class="btn-custom carousel slide " id="myCarousel"   data-ride="carousel">
  <div class="container " >
 
      <!-- Indicators -->


      <!-- Wrapper for slides -->
      <div class="carousel-inner"  role="listbox">


        <?php
        $con=mysqli_connect('localhost','root','','db_tabulation');

        if (mysqli_connect_errno())
        {
          echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        $results=mysqli_query($con,"SELECT * FROM events_contestant as ec LEFT JOIN contestant as c ON ec.contcode = c.contcode WHERE evntcode = 'SWC'");
 //$row=mysqli_fetch_array($results);
        $active='active';
        while($row=mysqli_fetch_array($results))
        {

          echo ' <div class="item '.$active.'">
          <div style="text-align:center">';

          echo '<h2>'.$row['fname'].' '. $row['lname'].'</h2>';
          echo '<h3 style="color:white">'.$row['schlname'].'</h3><br><br>';
          
          $results2=mysqli_query($con,"SELECT * FROM scores WHERE evntcode = 'SWC' AND contcode= ".$row['contcode']);
          echo ' <table>
              <tbody>';
            while($row1=mysqli_fetch_array($results2))
            {
              $var = ($row1['judgcode'] > 12 ) ? $row1['judgcode'] - 1 : $row1['judgcode'];
              $score = ($row1['score'] == 0 || $row1['score'] == null) ? 0 : $row1['score'];
              if($row1['judgcode'] != 12){
                 echo '             
              <tr >
              <td width="21%"></td>
              <td > <h3 > JUDGE '.$var.'</h3></td>
              <td width="60%"><h3>-</h3></td>
              <td><h3>'. $score .'</h3> </td>
              </tr>         
             
              ' ;
              }
            }
            echo ' </tbody>
              </table>' ;
          echo '  </div>
          </div>
          ';
          $active= ' ';
        }
        ?>
        <br>
      </div>
      <br>
      <div>
        <br>
        <!-- <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol> -->
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

<script type="text/javascript">
  $('#myCarousel').carousel({
  interval: false,
  wrap: false
});
</script>
</body>
</html>

