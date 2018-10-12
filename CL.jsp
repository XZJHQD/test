<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.sql.*"%>
<html>
<head>
<title>connect the db</title>
</head>
<link rel="stylesheet" type="text/css" href="CL.css">>
<body>

 <a href="TU.html"><span style="margin-left:10px">添加</span></a>
    <hr color="green">
    <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-botton:8px">
        <tr align="center" bgcolor="#FAFAFA">
            
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>操作</td>
        </tr>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String url="jdbc:sqlserver://localhost:1433;DatabaseName=shuju";
String user="sa";
String password="123456"; 
Connection conn= DriverManager.getConnection(url,user,password);
Statement stmt=conn.createStatement();
String sql="select * from dbo.xuesheng"; //message1为数据源所在库中的一张表；
ResultSet rs=stmt.executeQuery(sql);
while(rs.next()) {%>
<tr align="center" bgcolor="#FAFAFA">
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
 <td><a href="XG.jsp">修改</a>|
       <a href="AL.jsp">删除</a>
        </td>
<%}%>


<%rs.close();
stmt.close();
conn.close();
%>

</body>
</html>