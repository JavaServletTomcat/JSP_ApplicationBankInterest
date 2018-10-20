<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ứng dụng tính tiền lãi gửi ngân hàng JSP</title>
</head>
<body>
<h1>Ứng dụng tính tiền lãi gửi ngân hàng JSP</h1>
<form action="index.jsp" method="post">
    <div>
        <label for="money">Nhập số tiền</label>
        <input type="number" id="money" name="money" placeholder="Số tiền cho vay">
    </div>
    <br>
    <div>
        <label for="month">Nhập số tháng</label>
        <input type="number" id="month" name="month" placeholder="Số tháng cho vay">
    </div>
    <br>
    <div>
        <label for="interest">Nhập lãi suất</label>
        <input type="number" id="interest" name="interest" placeholder="Lãi suất năm">
    </div>
    <br>
    <input type="submit" name="submit" value="Tính tiền">
</form>

<%! private float money = 0.0f;
    private float interestRate = 0.0f;
    private float month = 0.0f;
    private float moneyInterest = 0.0f;
%>
<%
    if (request.getParameter("submit") != null) {
        money = Float.parseFloat(request.getParameter("money"));
        interestRate = Float.parseFloat(request.getParameter("interest"));
        month = Float.parseFloat(request.getParameter("month"));
        moneyInterest = (money * (interestRate / 12) * month) / 100;
%>
    <p>Money: <%=money%>
    </p>
    <p>Month: <%=month%>
    </p>
    <p>Interest Rate: <%=interestRate%>
    </p>
    <p>Money Interest: <%=moneyInterest%>
    </p>
<% }%>
</body>
</html>
