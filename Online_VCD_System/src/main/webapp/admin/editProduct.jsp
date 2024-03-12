<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Edit Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
body
{
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body style="background-image: url(https://images.pexels.com/photos/669996/pexels-photo-669996.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);">
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left' style="color:Gold"> Back</i></a></h2>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where id='"+id+"'");
	while(rs.next())
	{
		
%>
<form action="editProductAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<div class="left-div">
 <h3 style="color:LawnGreen">Enter Name</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
<h3 style="color:LawnGreen">Enter Category</h3>
 <input class="input-style" type="text" name="category" value="<%=rs.getString(3) %>" required>
<hr>
</div>

<div class="left-div">
<h3 style="color:LawnGreen">Enter Price</h3>
 <input class="input-style" type="number" name="price" value="<%=rs.getString(4) %>" required>
<hr>
</div>

<div class="right-div">
<h3 style="color:LawnGreen">Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes</option>
<option value="No">No</option>
</select>
 <hr>
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
 </form>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>


</body>
<br><br><br>
</body>
</html>