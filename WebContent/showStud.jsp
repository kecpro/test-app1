<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="Company.Company"
     import="models.user"
     import="alumni.Adao"
     import="Company.Cdao"
     import="alumni.alumni"
     import="java.util.*"  
 %>    
     
<!DOCTYPE html>

<html>
<head>
	<title>Placements | Student Login</title>
	<link rel="stylesheet" href="../css/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/navigation.css">
	<link rel="shortcut icon" href="images/logo.png">
	<link href='http://fonts.googleapis.com/css?family=Oswald:700' rel='stylesheet' type='text/css'>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style_new.css" rel='stylesheet' type='text/css' />

	<link href='http://fonts.googleapis.com/css?family=Dancing+Script:400,700' rel='stylesheet' type='text/css'>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	
		<link rel="stylesheet" href="css/site.css">
	<link rel="stylesheet" name="layout" type="text/css" />
	<link rel="stylesheet" href="css/themes/blue.css" name="theme">
	<link rel="stylesheet" href="css/textarea.css">
	
	<script src="js/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
	</script>

<style type="text/css">
.style3 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: xx-large;
}
.style4 {
	color: #663300;
	font-style: italic;
	font-weight: bold;
	font-size: large;
}
.style5 {
	color: #003399;
	font-style: italic;
	font-size: larger;
	font-weight: bold;
}
.style6 {
	color: #330000;
	font-weight: bold;
	font-style: italic;
	font-size: xx-large;
}
.style7 {
	color: #330000;
	font-style: italic;
	font-weight: bold;
}
.style9 {color: #CC6600}
.style13 {
	color: #FF0000;
	font-size: large;
}
.style15 {color: #FFFFFF; font-style: italic; }
.style16 {color: #003300}
.style17 {color: #FF3300}
.style20 {
	color: #333300;
	font-size: medium;
}
</style>
</head>
<body>
<!--start-banner-->
	<div class="banner banner1" id="home">
			<div class="header">
			<div class="logo">
				<img src="../images/logo.png" alt="">
				<a href="../index.html" class="style3">Training and Placement Office</a><br> 
				<span class="style4">The LNM Institute of Information Technology </span></div>
			<div class="navigation">
				 <span class="menu"></span> 
					<ul class="navig">
							<li><a href="start.jsp" class="active">HOME</a></li>
						<li><a href="Sstart.jsp">STUDENTS</a></li>
						<li><a href="Cstart.jsp">RECRUITERS</a></li>
						<li><a href="Astart.jsp">ALUMNI</a></li>
						<li><a href="Tstart.jsp">TPC</a></li>
					</ul>
			</div>			
				<div class="clearfix"></div>
			</div>
<div class="banner-main">
				<div class="container">	
				  <div class="banner-top">
						<h1>Welcome</h1>
						    <div align="center"><strong><br><br>
		                        <a href="Afirst.jsp" class="style15"> Alumni</a>
							</strong></div>
					</div>
				</div>
			</div>	
</div>	
	<!-- script-for-menu -->
		 <script>
				$("span.menu").click(function(){
					$(" ul.navig").slideToggle("slow" , function(){
					});
				});
		 </script>
</head>
<body>

<form name="f1" method="get" action="#">
       <select name="Filter">
           <option>All</option>
           <option>Field</option>
       </select>
     <input type="submit" name="submit" value="Select"/>
    </form>
<div class="idea">
	<div class="container">
		<div class="idea-main">
			<div class="idea-top">
<% 
				ArrayList<user> currentuser=new ArrayList<user>(); 
				currentuser = Adao.showUser();
                String s=request.getParameter("Filter");
				alumni currentUser = (alumni)session.getAttribute("currentSessionUser");
                if(s !=null){
   				if(s.equals("Field")){
   					//out.print("red");
   					currentuser = Adao.checkField(currentUser);
   				}
   				else{
   					currentuser = Adao.showUser();
   				}
                //out.print(currentUser.getName());
                //out.print(s)
                }
      			%>
				<h3>Students</h3><br><br>
				<table width="1200">
					<tr>
						<th>Name</th>
						<th>Pointer</th>
						<th>FIELD</th>
						<th>SKILL</th>
					</tr>
					<% for(user b: currentuser) {%>
					<tr>
						<td width="25%"><%= b.getName() %>()</td>
						<td width="25%"><%= b.getPointer() %></td>
						<td width="25%"><%= b.getField() %></td>
						<td width="25%"><% ArrayList<String> str = new ArrayList<String>();
								str = Adao.showSkills(b);
									for(String si: str) { %>
									<%= si %>
									<% } %></td>
					</tr>
					<% } %>

					</table>
			</div>
			
		</div>
		<div id="button">
				<td colspan="2" style="text-align:right">
				<a href ="logout"><input type="submit" value="Logout"  name="clickit" class="button small color"> </a><br>
				</td>
			</div>
	</div>
</div>

<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="contact">
					<div class="col-md-8 contact-left">
						<strong>Placement Office </strong><br>
					</div>
					<div class="col-md-4 contact-right">
						<h3>QUICK CONTACTS</h3>
						<p>+91(0) 44 2257 8130 | 8133</p>
						<p><a href="mailto:placement@iitm.ac.in">placement@lnmiit.ac.in</a></p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="footer-bottom">
					<div class="col-md-4 footer-left">
						<ul>
							<!--<li><a href="#"><span class="fb"> </span></a></li>
							<li><a href="#"><span class="twit"> </span></a></li>
							<li><a href="#"><span class="sky"> </span></a></li>-->
						</ul>
					</div>
					<div class="col-md-4 footer-middle">
							
					</div>
					<div class="col-md-4 footer-right">
						<p><a href="#home" class="scroll">TO THE TOP</a></p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<a href ="logout"><button> logout </button></a>
	<!--end-footer-->
</body>
</html>