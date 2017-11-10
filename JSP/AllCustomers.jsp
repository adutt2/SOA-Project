<%-- 
    Document   : AllCustomers
    Created on : Nov 7, 2017, 12:52:46 AM
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
        <th>Alternate Contact Name</th>
        <th>Billing Address</th>
        <th>City</th>
        <th>Company Name</th>
        <th>Contact Name</th>
        <th>Country</th>
        <th>Customer ID</th>
        <th>Customer Type</th>
        <th>Date</th>
        <th>Email</th>
        <th>First Name</th>
        <th>Phone</th>
        <th>State</th>
        <th>Zip Code</th>
        </tr>
    <%
    try {
	webservices.CustomerFeatures_Service service = new webservices.CustomerFeatures_Service();
	webservices.CustomerFeatures port = service.getCustomerFeaturesPort();
	// TODO process result here
	java.util.List<webservices.CustmerModels> result = port.getCustomers();
        for(int i =0; i<result.size(); i++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getAlternateContactName()+"</td>");
            out.println("<td>"+result.get(i).getBillingAddress()+"</td>");
            out.println("<td>"+result.get(i).getCity()+"</td>");
            out.println("<td>"+result.get(i).getCompanyName()+"</td>");
            out.println("<td>"+result.get(i).getContactName()+"</td>");
            out.println("<td>"+result.get(i).getCountry()+"</td>");
            out.println("<td>"+result.get(i).getCustomerID()+"</td>");
            out.println("<td>"+result.get(i).getCustomerType()+"</td>");
            out.println("<td>"+result.get(i).getDate()+"</td>");
            out.println("<td>"+result.get(i).getEmail()+"</td>");
            out.println("<td>"+result.get(i).getFirstName()+"</td>");
            out.println("<td>"+result.get(i).getPhone()+"</td>");
            out.println("<td>"+result.get(i).getState()+"</td>");
            out.println("<td>"+result.get(i).getZipCode()+"</td>");
            
        }
	
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
        </table>
    <h1>
        <a href ="http://192.168.0.29:8080/Final_project/Customer_features.jsp">Click Here to go back!</a>
    </h1>
    </body>
</html>
