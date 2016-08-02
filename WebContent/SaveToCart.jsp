<jsp:useBean id="item" class="com.bitwise.onlineShopping.Item" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="item" />


<font color='green'>Items added to your Cart</font>
<jsp:include page="userShopping.jsp"></jsp:include>
