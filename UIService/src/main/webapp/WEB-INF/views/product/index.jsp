<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<style>
input[type=text], select {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] {
  width: 10%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=button] {
  width: 10%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.movie
{
  margin-left:25px;
}
#movies
{
  margin-left:23px;
}
.cast
{
margin-right:25px;
}
#desc
{ 
  margin-left:45px;
}
.h2{
align:"center":
}
#descs
{
   margin-left:13px;
}

</style>

<meta charset="ISO-8859-1">
<title>Product Detail</title>
</head>
<body>
<h2 align="center"> Enter product details</h2>
 
    <br/>
    <div align="center">
    <s:form  method="POST" modelAttribute="product" action="${pageContext.request.contextPath}/product/index">
    <label class="cast">Product ID</label><input type="text" name="id" class="movie" id="p_id">
    <br/>
    <br/>
   
   <label class="">Product name</label><input type="text" name="name" id="movies">
    <br/>
    <br/>
   <label class="cast  ">Cost</label><input type="text" name="cost" id="desc">
    <br/>
    <br/>
   
    <br/>
     <br/>
    <br/>
   
      <input type="submit" value="Save">
      
   
    </s:form>
      </div>
</body>
</html>