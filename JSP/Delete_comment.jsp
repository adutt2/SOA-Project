<%-- 
    Document   : Delete_comment
    Created on : Nov 7, 2017, 12:17:36 AM
    Author     : dutta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
         body {
        background: tomato;
        display: flex;
        font-size: 16px;
        }
        h1{
            font-family: roboto;
            color: white;
            font-size: 30px;
            text-shadow: 1px 2px #333;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>  
    <%
    try {
	webservice.CommentFeatures_Service service = new webservice.CommentFeatures_Service();
	webservice.CommentFeatures port = service.getCommentFeaturesPort();
	 // TODO initialize WS operation arguments here
	java.lang.String cno = request.getParameter("Comment_ID");
	// TODO process result here
	java.util.List<webservice.CommentModels> result = port.delteComment(cno);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <a href ="http://192.168.0.29:8080/Final_project/Comment_features.jsp">Click Here to go back and see all the comments</a>
    <h1>Thank You! your comment was deleted</h1>
    </body>
</html>
