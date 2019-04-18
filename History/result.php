<?xml version = "1.0" encoding = "utf-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd>
<html xmlns = "http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="result.css">

<?php
$conn=mysqli_connect('localhost','root','','history');
$counter=0;
$resultans=0;
if(isset($_POST['submit'])){
  if(!empty($_POST['questionId'])){
    $result = 0;
    $i = 1;
    $selected=$_POST['questionId'];
    $sql='select * from questions';
    $query=mysqli_query($conn,$sql);
    while ($rows=mysqli_fetch_array($query)){
      if($rows['Ans_id']==$_POST['question_'.$i]){
        $result++;
      }
      $i++;
    }
    }
}
?>
<div class="middleTable">
  <h3>RESULT</h3>
  <hr>
  <?php echo "<p><b> Your Total Score is <span>".$result."</span></b></p>"; ?>
</div>
</html>
