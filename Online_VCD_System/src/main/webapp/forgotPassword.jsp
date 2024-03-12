<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body style="background-image: url(https://media.istockphoto.com/photos/password-input-field-with-padlock-picture-id808424876?b=1&k=20&m=808424876&s=170667a&w=0&h=jsHA-i698IpjyABBEA2Af_-n2U24x81UBrCNPXCmTgQ=);">
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
     <select name="securityQuestion">
     <option value="What was your first car?">What was your first car?</option>
     <option value="What is the name of your first pet?">What is the name of your first pet?</option>
     <option value="What elementary school did you attend?">What elementary school did you attend?</option>
     <option value="What is the name of your home town?">What is the name of your home town?</option>
     </select>
     <input type="text" name="answer" placeholder="Enter Answer" required>
     <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
     <input type="submit" value="Save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   <%
   String msg=request.getParameter("msg");
   if("done".equals(msg))
   {
   %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online VCD Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>