<%-- 
    Document   : Tickets_ID
    Created on : Nov 7, 2017, 2:01:16 PM
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
        <th>Amount</th>
        <th>Date</th>
        <th>Description</th>
        <th>Driver ID</th>
        <th>Payment Status</th>
        <th>Ticket Number</th>
    <%
    try {
	webservices.TicketFeatures_Service service = new webservices.TicketFeatures_Service();
	webservices.TicketFeatures port = service.getTicketFeaturesPort();
	 // TODO initialize WS operation arguments here
	java.lang.String tno = request.getParameter("Ticket_no");
	// TODO process result here
	java.util.List<webservices.TicketModels> result = port.getTickets1(tno);
	for(int i = 0; i<result.size(); i ++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getAmount()+"</td>");
            out.println("<td>"+result.get(i).getDate()+"</td>");
            out.println("<td>"+result.get(i).getDescription()+"</td>");
            out.println("<td>"+result.get(i).getDriverID()+"</td>");
            out.println("<td>"+result.get(i).getPaymentStatus()+"</td>");
            out.println("<td>"+result.get(i).getTicketNo()+"</td>");
            out.println("</tr>");
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
   </table>
         
         <h1>
             <a href="http://192.168.0.29:8080/Final_project/Tickets_features.jsp">Click here to go back!</a>
         </h1>
    </body>
</html>
