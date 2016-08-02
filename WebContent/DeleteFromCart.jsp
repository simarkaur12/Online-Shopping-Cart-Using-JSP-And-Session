<%
	if (request.getSession().getAttribute("name") == null) {
		out.println("<font color='red'>Please Login First</font>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
	} else {
%>

<jsp:useBean id="item" class="com.bitwise.onlineShopping.Item" scope="session"></jsp:useBean>
<jsp:setProperty property="itemToDelete" name="item" />
<jsp:setProperty property="items" name="item" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<center>
<fieldset>
  <legend><font size="5" color="green">Your Cart Items</font></legend>

<font color="green">Item Deleted</font>
<br><br>
<form action="DeleteFromCart.jsp">
<select id="itemToDelete" name="itemToDelete"> 
  <option value="0">Select</option> 
  <c:forEach items="${item.items}" var="i"> 
     <c:if test="${i != item.itemToDelete}">   
       <option value="${i }">${i }</option>  
     </c:if>
  </c:forEach> 
</select>
<br><br>

<input type="submit" value="Delete From Cart">
</form>	
</fieldset>
</center>


<%
	}
%>