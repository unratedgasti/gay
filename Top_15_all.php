<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
  #grad1 {
    height: 100%;
    width:100%;
    background: -webkit-linear-gradient(left, pink, black, black, black, black, black, pink); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(left, pink, black, black, black, black, black, pink); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(left, pink, black, black, black, black, black, pink); /* For Fx 3.6 to 15 */
    background: linear-gradient(to right, pink, black, black, black, black, black, pink); /* Standard syntax (must be last) */
    position: fixed;
    top: 0; right: 0; bottom: 0; left: 0; 
  }
</style>
<body>
  <div class="container" id="grad1" >
    <div style="text-align:center; color: #ffffff">
      <h1> TOP 15 
      </h1>
    </div>
    <div style="color:white" align="center">
      <table width ="70%" style="font-size: 25px" >
        <tr>
          <td width="30%" rowspan="2" align="center">Name</td>
          <td  width="60%" colspan="12" align="center">Judges</td>
        </tr>
        <tr>
          <td  width="5.45%" align="center">1</td>
          <td  width="5.45%" align="center">2</td>
          <td  width="5.45%" align="center">3</td>
          <td  width="5.45%" align="center">4</td>
          <td  width="5.45%" align="center">5</td>
          <td  width="5.45%" align="center">6</td>
          <td  width="5.45%" align="center">7</td>
          <td  width="5.45%" align="center">8</td>
          <td  width="5.45%" align="center">9</td>
          <td  width="5.45%" align="center">10</td>
          <td  width="5.45%" align="center">11</td>
        </tr>
         <?php
        $con=mysqli_connect('localhost','root','','db_tabulation');

        if (mysqli_connect_errno())
        {
          echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }

        $results=mysqli_query($con,"SELECT * FROM events_contestant as ec LEFT JOIN contestant as c ON ec.contcode = c.contcode WHERE evntcode = 'SWC'");

     

        while($row=mysqli_fetch_array($results))
        {
        
          echo '<tr>';
          echo '<td style="font-size:20px;"></br>'.$row['fname'].' '. $row['lname'].'</td>';
          for($i=1;$i<=11;$i++)
          {
          $results2=mysqli_query($con,"SELECT * FROM scores WHERE evntcode = 'SWC' AND judgcode =".$i." AND contcode= ".$row['contcode']);
          $row2=mysqli_fetch_array($results2);
          if(count($row2)==0 || count($row2)==null)
          {
          echo '<td style="font-size:20px; text-align:center"></br>0.00</td>';
          }
          else
          {
          echo '<td style="font-size:20px; text-align:center"></br>'.$row2['score'].'</td>';
          }
         
         
        }
         echo '</tr>';
      }
       
        ?>

      </div>
      <div>
      </body>
      </html>

