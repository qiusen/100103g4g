function change_option(number,index)
{
  for (var i = 1; i <= number; i++) 
  {
    if(document.getElementById("tit"+i).className =="tit_b")
	{
      document.getElementById("tit"+i).className = "";}
      document.getElementById("tit"+index).className = "tit_b";
  }
  
  for(var j=1;j<= number;j++)
  {
  	  if(document.getElementById("sub_"+j).style.display=="block")
	  {
	  document.getElementById("sub_"+j).style.display ="none";
	  }
	  document.getElementById("sub_"+index).style.display ="block";
  }
}

function hiddensub(number,index)
{
  for (var i = 1; i <= number; i++) 
  {
    if(document.getElementById("tit"+i).className =="tit_b")
	{
      document.getElementById("tit"+i).className = "";}
      document.getElementById("tit"+index).className = "";
  }
  
  for(var j=1;j<= number;j++)
  {
  	  if(document.getElementById("sub_"+j).style.display=="block")
	  {
	  document.getElementById("sub_"+j).style.display ="none";
	  }
	  document.getElementById("sub_"+index).style.display ="none";
	  document.getElementById("sub_"+1).style.display ="block";
  }
}
function change_pay(number,index)
{
  for (var n= 1; n <= number; n++) 
  {
    if(document.getElementById("btn"+n).className =="hot")
	{
      document.getElementById("btn"+n).className = "";}
      document.getElementById("btn"+index).className = "hot";
  }
  
  for(var m=1;m<= number;m++)
  {
  	  if(document.getElementById("info"+m).style.display=="block")
	  {
	  document.getElementById("info"+m).style.display ="none";
	  }
	  document.getElementById("info"+index).style.display ="block";
  }
}
function change_news(number,index)
{
  for (var a=1; a <= number; a++) 
  {
    if(document.getElementById("newsbtn"+a).className =="hot2")
	{
      document.getElementById("newsbtn"+a).className = "";}
      document.getElementById("newsbtn"+index).className = "hot2";
  }
  
  for(var b=1;b<= number;b++)
  {
  	  if(document.getElementById("newslist"+b).style.display=="block")
	  {
	  document.getElementById("newslist"+b).style.display ="none";
	  }
	  document.getElementById("newslist"+index).style.display ="block";
  }
}

function  showlogon(a,b){   
	document.getElementById("logtab"+a).style.display="block";
	document.getElementById("logtab"+b).style.display="none";
  }   
