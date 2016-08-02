

<jsp:useBean id="item" class="com.bitwise.onlineShopping.Item" scope="session"></jsp:useBean>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="i" items="${item.items }">
   Item <c:out value="${i}"/><p>
</c:forEach>
