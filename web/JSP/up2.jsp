<%-- 
    Document   : up
    Created on : 22 Jan, 2019, 12:37:50 PM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String x="";
            String msg=request.getParameter("msg");
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps=con.prepareStatement("select * from pasttime where pastid=?");
            ps.setString(1, msg);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                x=Integer.toString(Integer.parseInt(rs.getString("up"))+1);
                PreparedStatement ps1=con.prepareStatement("update pasttime set up=? where pastid=?");
                ps1.setString(1, x);
                ps1.setString(2, msg);
                int y=ps1.executeUpdate();
                if(y>0)
                {
                    response.sendRedirect("pasttimes.jsp");
                }
            }
            %>
    </body>
</html>
