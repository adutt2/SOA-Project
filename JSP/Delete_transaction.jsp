<%-- 
    Document   : Delete_transaction
    Created on : Nov 7, 2017, 2:21:17 PM
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
    <body>    <%-- start web service invocation --%><hr/>
    <%
    try {
	webservice.TransactionFeatures_Service service = new webservice.TransactionFeatures_Service();
	webservice.TransactionFeatures port = service.getTransactionFeaturesPort();
	 // TODO initialize WS operation arguments here
	java.lang.String tno = request.getParameter("Transaction_ID");
	// TODO process result here
	java.util.List<webservice.TransactionModels> result = port.deleteTransactions(tno);
	
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
<a href ="http://192.168.0.29:8080/Final_project/Transaction_features.jsp">Click Here to go back and see all the Transactions</a>
    <h1>Thank You! your Transaction was deleted</h1>
    </body>
        
    </body>
</html>
