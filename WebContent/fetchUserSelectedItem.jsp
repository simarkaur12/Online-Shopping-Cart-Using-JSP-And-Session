<%
	if (request.getSession().getAttribute("name") == null) {
		out.println("<font color='red'>Please Login First</font>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
	} else {
%>
<jsp:useBean id="item" class="com.bitwise.onlineShopping.Item" scope="session"></jsp:useBean>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
<center>
<fieldset>
  <legend><font size="5" color="green">Your Cart Items</font></legend>
	<form action="DeleteFromCart.jsp">
		<select id="itemToDelete" name="itemToDelete">
			<c:forEach var="i" items="${item.items }">
                    <option value="${i }">${i }</option>
           </c:forEach>
		</select>
		<br><br>
		<input type="submit" value="Delete From Cart">
	</form>	
</fieldset>
</center>
</body>
</html>

<%
	}
%>