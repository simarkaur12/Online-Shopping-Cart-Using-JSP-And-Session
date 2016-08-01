<jsp:useBean id="item" class="com.bitwise.onlineShopping.Item" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="item" />

<%@ taglib uri="WEB-INF/mytags.tld" prefix="m" %>
<m:addToHashMap  item="item"/>

<font color='green'>items added to your Cart</font>
<jsp:include page="userShopping.jsp"></jsp:include>
