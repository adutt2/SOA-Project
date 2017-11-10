<%-- 
    Document   : Customer_payments_ID
    Created on : Nov 7, 2017, 12:33:33 AM
    Author     : dutta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        
        table, th, td {
        border-collapse: collapse;
        padding: 15px;
        }
        body {
        background: tomato;
        display: flex;
        font-size: 16px;
        }
        table{
        background: white;
        width: 100%;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
        font-family: lato;
        position: absolute;
        top: 100px;
        left: 2px;
        color: #333;
        border-radius: 10px;
        }
        h1{
            font-family: roboto;
            color: white;
            font-size: 30px;
            text-shadow: 1px 2px #333;
        }
        th,td {
        text-align: center;
        }
        tr:hover{background-color:#f5f5f5}
        </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
        <tr>
        <th>Authorization Number</th>
        <th>Card Expiry</th>
        <th>Card Holder</th>
        <th>Card Number</th>
        <th>Order ID</th>
        <th>Payment Amount</th>
        <th>Payment ID</th>
        <th>Payment Method</th>
        <th>Payment Method ID</th>
        </tr>
        <%-- start web service invocation --%><hr/>
    <%
    try {
	webservices.CustomerPaymentDetails_Service service = new webservices.CustomerPaymentDetails_Service();
	webservices.CustomerPaymentDetails port = service.getCustomerPaymentDetailsPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cid = request.getParameter("Payment_ID");
	// TODO process result here
	java.util.List<webservices.CustomerPaymentsModels> result = port.getPaymentDetails(cid);
	
        for(int i = 0; i<result.size(); i++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getAuthorizationNumber()+"</td>");
            out.println("<td>"+result.get(i).getCardExp()+"</td>");
            out.println("<td>"+result.get(i).getCardHolder()+"</td>");
            out.println("<td>"+result.get(i).getCreditCardNumber()+"</td>");
            out.println("<td>"+result.get(i).getOrderID()+"</td>");
            out.println("<td>"+result.get(i).getPaymentAmount()+"</td>");
            out.println("<td>"+result.get(i).getPaymentID()+"</td>");
            out.println("<td>"+result.get(i).getPaymentMethod()+"</td>");
            out.println("<td>"+result.get(i).getPaymentMethodID()+"</td>");
            out.println("</tr>");
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>


    <h1>
        <a href ="http://192.168.0.29:8080/Final_project/Customer_paymentFeatures.jsp"><--<--Click Here to go back</a>
    </h1>
    </body>
</html>
