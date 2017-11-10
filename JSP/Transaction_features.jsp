<%-- 
    Document   : Transaction_features
    Created on : Nov 7, 2017, 2:07:17 PM
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
        .footer {
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #efefef;
  text-align: center;
}
       </style> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table>
        <tr>
        <th>Discount</th>
        <th>Driver ID</th>
        <th>Driver Price</th>
        <th>Make</th>
        <th>Model</th>
        <th>Order ID</th>
        <th>Price ID</th>
        <th>Quality</th>
        <th>Rate</th>
        <th>Run Number</th>
        <th>Special</th>
        <th>Surcharge</th>
        <th>Transaction Amount</th>
        <th>Transaction Date</th>
        <th>Transaction Description</th>
        <th>Transaction ID</th>
        <th>Truck Number</th>
        <th>Unit Price</th>
        <th>VIN</th>
        <th>Year</th>
        
    <%
    try {
	webservice.TransactionFeatures_Service service = new webservice.TransactionFeatures_Service();
	webservice.TransactionFeatures port = service.getTransactionFeaturesPort();
	// TODO process result here
	java.util.List<webservice.TransactionModels> result = port.getTransactions();
	for(int i =0; i<result.size();i++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getDiscount()+"</td>");
            out.println("<td>"+result.get(i).getDriverID()+"</td>");
            out.println("<td>"+result.get(i).getDriverPrice()+"</td>");
            out.println("<td>"+result.get(i).getMake()+"</td>");
            out.println("<td>"+result.get(i).getModel()+"</td>");
            out.println("<td>"+result.get(i).getOrderID()+"</td>");
            out.println("<td>"+result.get(i).getPriceID()+"</td>");
            out.println("<td>"+result.get(i).getQuality()+"</td>");
            out.println("<td>"+result.get(i).getRate()+"</td>");
            out.println("<td>"+result.get(i).getRunNumber()+"</td>");
            out.println("<td>"+result.get(i).getSpecial()+"</td>");
            out.println("<td>"+result.get(i).getSurcharge()+"</td>");
            out.println("<td>"+result.get(i).getTransactionAmount()+"</td>");
            out.println("<td>"+result.get(i).getTransactionDate()+"</td>");
            out.println("<td>"+result.get(i).getTransactionDescription()+"</td>");
            out.println("<td>"+result.get(i).getTransactionID()+"</td>");
            out.println("<td>"+result.get(i).getTruckNo()+"</td>");
            out.println("<td>"+result.get(i).getUnitPrice()+"</td>");
            out.println("<td>"+result.get(i).getVin()+"</td>");
            out.println("<td>"+result.get(i).getYear()+"</td>");
            out.println("</tr>");
            
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
         </table>
         <form action ="http://192.168.0.29:8080/Final_project/Delete_transaction.jsp">
             <p>Please provide the Transaction ID you want to delete<input type ="text" name ="Transaction_ID"></p>
             <p><input type ="submit" value ="Delete Transaction"></p>
         </form>
         <div class="footer"><a href ="http://192.168.0.29:8080/Final_project/index.html"><strong>Home</strong></a></div>
    </body>
</html>
