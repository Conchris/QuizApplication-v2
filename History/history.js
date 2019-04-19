$(document).ready(function(){
  $("#question1").click(function(){
    $("#answer1").slideToggle("slow");
    $("#answer2").slideToggle("slow");
    $("#answer3").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#question2").click(function(){
    $("#answer4").slideToggle("slow");
    $("#answer5").slideToggle("slow");
    $("#answer6").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#question3").click(function(){
    $("#answer7").slideToggle("slow");
    $("#answer8").slideToggle("slow");
    $("#answer9").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#question4").click(function(){
    $("#answer10").slideToggle("slow");
    $("#answer11").slideToggle("slow");
    $("#answer12").slideToggle("slow");
  });
});
$(document).ready(function(){
  $("#question5").click(function(){
    $("#answer13").slideToggle("slow");
    $("#answer14").slideToggle("slow");
    $("#answer15").slideToggle("slow");
  });
});

function dodi() {
  var a=document.forms["myform"]["question_1"].value;
  var b=document.forms["myform"]["question_2"].value;
  var c=document.forms["myform"]["question_3"].value;
if(a==""||b==""||c==""){
  alert("Please Question can't be left Empty");
  return false;
}
var a2=document.forms["myform"]["question_4"].value;
var b2=document.forms["myform"]["question_5"].value;
var c2=document.forms["myform"]["question_6"].value;
if(a2==""||b2==""||c2==""){
alert("Please Question can't be left Empty");
return false;
}
var a3=document.forms["myform"]["question_7"].value;
var b3=document.forms["myform"]["question_8"].value;
var c3=document.forms["myform"]["question_9"].value;
if(a3==""||b3==""||c3==""){
alert("Please Question can't be left Empty");
return false;
}


}
