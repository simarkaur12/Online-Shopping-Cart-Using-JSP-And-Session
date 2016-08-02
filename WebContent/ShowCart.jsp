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

<c:forEach var="i" items="${item.items }">
   Item <c:out value="${i}"/><p>
</c:forEach>

<br><br><br><font color='blue'>If you don't want to purchase some item, Remove some items from cart:-<br><br></font>

<form action="fetchUserSelectedItem.jsp" method="post">
   <input type="submit" value="Delete from Cart">
</form>

<%
	}
%>