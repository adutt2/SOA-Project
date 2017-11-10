<%-- 
    Document   : Comment_features
    Created on : Nov 7, 2017, 12:10:26 AM
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
        .demo {
  margin: 0 auto;
  padding-top: 64px;
  max-width: 640px;
  width: 94%;
}

.demo h1 {
  margin-top: 0;
}

/**
 * Footer Styles
 */

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
    
    <body>    <%-- start web service invocation --%><hr/>
        <table>
        <tr>
        <th>Comment ID</th>
        <th>Comment Note </th>
        <th>Comment Time</th>
        <th>Comment Type</th>
        <th>Customer ID</th>
        </tr>
    <%
    try {
	webservice.CommentFeatures_Service service = new webservice.CommentFeatures_Service();
	webservice.CommentFeatures port = service.getCommentFeaturesPort();
	// TODO process result here
	java.util.List<webservice.CommentModels> result = port.getComment();
	//.println("Result = "+result);
        for(int i = 0; i<result.size(); i++){
            out.println("<tr>");
            out.println("<td>"+result.get(i).getCommentID()+"</td>");
            out.println("<td>"+result.get(i).getCommentNote()+"</td>");
            out.println("<td>"+result.get(i).getCommentTime()+"</td>");
            out.println("<td>"+result.get(i).getCommentType()+"</td>");
            out.println("<td>"+result.get(i).getCustomerID()+"</td>");
            out.println("</tr>");
                      
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    
    </table>
    <form action ="http://192.168.0.29:8080/Final_project/Delete_comment.jsp">
        <p>Type the Comment ID you want to delete<input type ="text" Name ="Comment_ID"></p>
        <p><input type ="submit" value ="Delete Comment"></p>
    </form>
    <div class="footer"><a href ="http://192.168.0.29:8080/Final_project/index.html"><strong>Home</strong></a></div>
    </body>
</html>
