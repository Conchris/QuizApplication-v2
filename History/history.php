<?xml version = "1.0" encoding = "utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd>
<html xmlns = "http://www.w3.org/1999/xhtml">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="index.css">
<script src="index.js"></script>

<?php $conn=mysqli_connect("localhost","root","","history"); ?>
<body>
<div class="middleTable">

  <form action="result.php" method="post">

  <?php $sql='select * from questions';

  $result=mysqli_query($conn,$sql);?>

  <h3 id="header">Quiz Application</h3>

  <ol type="1" >

  <?php while($Qns=mysqli_fetch_array($result)){?>
    <hr>

    <li id="question<?php echo $Qns['id']; ?>">

      <?php echo $Qns['content']; ?>

      <input type="hidden" name="questionId"  value="<?php echo $Qns['id'] ?>">

    <ol type="a">

      <?php $db='select * from answers where ans_id=?';//created a template
      //create a prepared statement
      $stmt=mysqli_stmt_init($conn);
      //prepare the prepare statement
      mysqli_stmt_prepare($stmt,$db);
      //bind parameters to the placeholder
      mysqli_stmt_bind_param($stmt,'i',$Qns['id']);
      //Run parameters inside database
      mysqli_stmt_execute($stmt);
      $reponse=mysqli_stmt_get_result($stmt);
       ?>
      <?php while($Ans=mysqli_fetch_array($reponse)){?>

        <li id="answer<?php echo $Ans['id']?>">
          <input  type="radio"  name="question_<?php echo $Qns['id']?>" value="<?php echo $Ans['id']?>">
          <?php echo $Ans['content']; ?>
        </li>

      <?php } ?>
      <br>

    </ol>

    </li>

  <?php } ?><hr>
  <input type="submit" class="submit" name="submit" value="submit">

  </form>

</div>
</body>
</html>
