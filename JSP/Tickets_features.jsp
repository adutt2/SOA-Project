
<%-- 
    Document   : Driver_features
    Created on : Nov 6, 2017, 10:38:38 PM
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
                     <th>Ticket Search using Ticket number can be done here!</th>
                 </tr>
                 <tr>
                     <th><form action ="http://192.168.0.29:8080/Final_project/Tickets_ID.jsp"></th>
</tr>
<tr>
                     <td>Please enter the Item Number you want to search<input type ="text"  Name ="Ticket_no"></input></td>
</tr>
                     <tr>
                     <td><input  type ="submit" Name ="Submit" value ="Get Tickets" ></td>
                     </tr>

            
</table>
        <h1>
<a href ="http://192.168.0.29:8080/Final_project/All_tickets.jsp">Get all Tickets List</a>
        </h1>
        <div class="footer"><a href ="http://192.168.0.29:8080/Final_project/index.html"><strong>Home</strong></a></div>
    </body>
</html>
