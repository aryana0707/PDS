<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

	function validate(){
		
		var user=document.fr1.uname.value;
		var pass=document.fr1.upass.value;
		
		if(user.length==0){
			alert("Please provide your username.");
			document.fr1.uname.focus();
			return false;
		}
		
		if(pass.length==0){
			alert("Please provide your password.");
			document.fr1.upass.focus();
			return false;
		}
	}

</script>

</head>
<body>
<%@include file="header.html" %>
<br/>
<center>
	<h1 style=" color: blue;">Administrator Login Form!</h1>
	<hr/>
	
</center>
<form action="log.jsp" name="fr1" onsubmit="return validate();" method="post">
	<table align="center" bgcolor="pink" cellpadding="8" cellspacing="8" width="60%">
		<tr>
			<td>
				<h4 style="color: red;">Username or password you have entered is not correct. Please try again.</h4>
			</td>
		</tr>
		<tr>
			<td>Username</td>
			<td><input type="text" name="uname" size="25"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="upass" size="25"></td>
		</tr>
		<tr>
			<td><a href="forgot.jsp">Forgot password?</a></td>
			<td></td>
		</tr>
		<tr>
			<td><input type="submit" value="Sign in"></td>
			<td><input type="reset" value="Reset"></td>
		</tr>
	</table>
</form>
<br/>
<br/>
<br/>
<%@include file="footer.html" %>

</body>
</html>