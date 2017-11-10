<%-- 
    Document   : Order_ID
    Created on : Nov 9, 2017, 3:05:00 PM
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
        <th>Customer ID</th>
        <th>Driver ID </th>
        <th>Is Special</th>
        <th>Order Date</th>
        <th>Order ID</th>
        <th>Purchase Order Number</th>
        <th>Total Amount</th>
        <th>Truck ID</th>
        </tr>
    <%
    try {
	webservice.OrderFeatures_Service service = new webservice.OrderFeatures_Service();
	webservice.OrderFeatures port = service.getOrderFeaturesPort();
	 // TODO initialize WS operation arguments here
	java.lang.String oid = request.getParameter("Order_ID");
	// TODO process result here
	java.util.List<webservice.OrderModels> result = port.getOrderDetails(oid);
	for (int i =0 ; i <result.size() ; i ++){
             out.println("<tr>");
            out.println("<td>"+result.get(i).getCustomerID()+"</td>");
            out.println("<td>"+result.get(i).getDriverID()+"</td>");
            out.println("<td>"+result.get(i).getIsSpecial()+"</td>");
            out.println("<td>"+result.get(i).getOrderDate()+"</td>");
            out.println("<td>"+result.get(i).getOrderID()+"</td>");
            out.println("<td>"+result.get(i).getPurchaseOrderNumber()+"</td>");
            out.println("<td>"+result.get(i).getTotalAmount()+"</td>");
            out.println("<td>"+result.get(i).getTruckID()+"</td>");
            out.println("</tr>");
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
        </table>
          <h1><a href ="http://192.168.0.29:8080/Final_project/Order_features.jsp"><--<--Click Here to go back</a></h1>
    </body>
</html>
