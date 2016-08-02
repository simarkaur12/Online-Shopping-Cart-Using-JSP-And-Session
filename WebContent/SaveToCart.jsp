<%
	if (request.getSession().getAttribute("name") == null) {
		out.println("<font color='red'>Please Login First</font>");
%>
<jsp:include page="index.jsp"></jsp:include>
<%
	} else {
%>

<jsp:useBean id="item" class="com.bitwise.onlineShopping.Item" scope="session"></jsp:useBean>
<jsp:setProperty property="items" name="item" />



<font color='green'>Items added to your Cart</font>
<jsp:include page="userShopping.jsp"></jsp:include>

<%
	}
%>