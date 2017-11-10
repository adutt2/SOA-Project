<%-- 
    Document   : Driver_payments_ID
    Created on : Nov 7, 2017, 2:06:11 AM
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
        <th>Driver ID</th>
        <th>Driver Name</th>
        <th>Payment Due</th>
        <th>Payment ID</th>
        <th>Previous Payments</th>
    <%
    try {
	webservices.DriverPaymentsFeatures_Service service = new webservices.DriverPaymentsFeatures_Service();
	webservices.DriverPaymentsFeatures port = service.getDriverPaymentsFeaturesPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cid = request.getParameter("Payment_ID");
	// TODO process result here
	java.util.List<webservices.DriverPaymentsModel> result = port.getPaymentDetails(cid);
	for (int i = 0; i <result.size(); i ++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getDriverID()+"</td>");
            out.println("<td>"+result.get(i).getDriverName()+"</td>");
            out.println("<td>"+result.get(i).getPaymentDue()+"</td>");
            out.println("<td>"+result.get(i).getPaymentID()+"</td>");
            out.println("<td>"+result.get(i).getPreviousPayments()+"</td>");
            out.println("</tr>");
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
</table>
    <h1>
        <a href="http://192.168.0.29:8080/Final_project/DriverPayments_features.jsp">Click here to go back!</a>
    </h1>
    </body>
</html>
