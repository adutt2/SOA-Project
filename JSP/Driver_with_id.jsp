<%-- 
    Document   : Drivers
    Created on : Nov 6, 2017, 10:01:45 PM
    Author     : dutta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
 
<%@page import="java.io.*"%>
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
    <table>
        <tr>
        <th>Address</th>
        <th>Birth Date </th>
        <th>City</th>
        <th>Contractor</th>
        <th>Driver ID</th>
        <th>Driver License Plate</th>
        <th>Driver License State</th>
        <th>Email</th>
        <th>Employee Type</th>
        <th>First Name</th>
        <th>Hire Date</th>
        <th>Last Name</th>
        <th>Note</th>
        <th>Phone</th>
        <th>SSN</th>
        <th>Salary</th>
        <th>State</th>
        <th>Zip Code</th>
        </tr>
   
    <body>    <%-- start web service invocation --%><hr/>
    <%
    try {
	webservices.NewWebService_Service service = new webservices.NewWebService_Service();
	webservices.NewWebService port = service.getNewWebServicePort();
	 // TODO initialize WS operation arguments here
	java.lang.String did = request.getParameter("Driver_ID");
	// TODO process result here
	java.util.List<webservices.DriverModel> result = port.getDriverDetails(did);
	//out.println("Result = "+result);
        for (int i =0 ; i <result.size() ; i ++){
             out.println("<tr>");
            out.println("<td>"+result.get(i).getAddress()+"</td>");
            out.println("<td>"+result.get(i).getBirthDate()+"</td>");
            out.println("<td>"+result.get(i).getCity()+"</td>");
            out.println("<td>"+result.get(i).getContractor()+"</td>");
            out.println("<td>"+result.get(i).getDriverID()+"</td>");
            out.println("<td>"+result.get(i).getDriverLicense()+"</td>");
            out.println("<td>"+result.get(i).getDriverLicenseState()+"</td>");
            out.println("<td>"+result.get(i).getEmail()+"</td>");
            out.println("<td>"+result.get(i).getEmployeeType()+"</td>");
            out.println("<td>"+result.get(i).getFirstName()+"</td>");
            out.println("<td>"+result.get(i).getHireDate()+"</td>");
            out.println("<td>"+result.get(i).getLastName()+"</td>");
            out.println("<td>"+result.get(i).getNote()+"</td>");
            out.println("<td>"+result.get(i).getPhone()+"</td>");
            out.println("<td>"+result.get(i).getSSN()+"</td>");
            out.println("<td>"+result.get(i).getSalary()+"</td>");
            out.println("<td>"+result.get(i).getState()+"</td>");
            out.println("<td>"+result.get(i).getZipCode()+"</td>");
            //out.println("<td>"+result.get(i).getClass()+"</td>");
            out.println("</tr>");



        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
     </table>
     <a href =" http://192.168.0.29:8080/Final_project/Driver_features.jsp"><--<--Click Here to go back</a>
    </body>
</html>
