<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
</head>
<body>
        <center><h3 style="margin-top:5px">添加用户</h3></center><hr color="green">
    <%  request.setCharacterEncoding("UTF-8");  //防止中文输入产生乱码
        String name=request.getParameter("name");
        String sex=request.getParameter("sex");
        String age=request.getParameter("age");
        
            try{
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
                String url="jdbc:sqlserver://localhost:1433;DatabaseName=shuju";
                String user="sa";
                String password="123456"; 
                Connection connection= DriverManager.getConnection(url,user,password);
                PreparedStatement ps=connection.prepareStatement("insert into dbo.xuesheng values(0,?,?,?)");
                ps.setString(1,name);
                ps.setString(2,sex);
                ps.setString(3  ,age);
                int result=ps.executeUpdate();
                if(result==1){
                response.sendRedirect("CL.jsp");
                }
                else{
                    out.print("添加失败");
                }
            }catch(Exception e){
                out.print("there is something wrong");
            }
        %>

</body>
</html>
