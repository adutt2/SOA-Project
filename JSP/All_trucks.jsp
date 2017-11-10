<%-- 
    Document   : All_trucks
    Created on : Nov 7, 2017, 2:31:28 PM
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
        <th>Capacity</th>
        <th>Color</th>
        <th>Driver ID</th>
        <th>License Plate Number</th>
        <th>Make</th>
        <th>Truck Number</th>
        <th>Type</th>
        <th>VIN</th>
        <th>Year</th>
        
    <%
    try {
	webservices.TrucksFeatures_Service service = new webservices.TrucksFeatures_Service();
	webservices.TrucksFeatures port = service.getTrucksFeaturesPort();
	// TODO process result here
	java.util.List<webservices.TruckModel> result = port.getTrucks();
	for(int i =0; i<result.size();i ++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getCapacity()+"</td>");
            out.println("<td>"+result.get(i).getColor()+"</td>");
            out.println("<td>"+result.get(i).getDriverID()+"</td>");
            out.println("<td>"+result.get(i).getLicensePlateNo()+"</td>");
            out.println("<td>"+result.get(i).getMake()+"</td>");
            out.println("<td>"+result.get(i).getTruckNo()+"</td>");
            out.println("<td>"+result.get(i).getType()+"</td>");
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
        <h1>
            <a href="http://192.168.0.29:8080/Final_project/Truck_features.jsp">Click here to go Back!</a>
        </h1>
    </body>
</html>
