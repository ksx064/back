<%@ page import = "java.io.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="utf-8"%>
<%@ page language="java" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%  	
    try {
//Step 1: 載入資料庫驅動程式 
        	Class.forName("com.mysql.jdbc.Driver");	  
	//使用JDBC去連結MySQL，所以該行語法的意思，就是要告訴電腦我要使用JDBC
        try {
//Step 2: 建立連線 
        	String url="jdbc:mysql://localhost:3306/?serverTimezone=UTC";
            Connection con=DriverManager.getConnection(url,"root","1234");   
		//建立connection(連線)的語法，url代表我所要連結的MySQL所在IP，root是帳號，1234是密碼
		//此連線是指和mySql連線，不是和存在mySql內的特定資料庫連線。		
//Step 5: 顯示結果 				
		   if(con.isClosed()){
			   out.println("連線建立失敗");
		   }else{
			   String email=request.getParameter("email"); 
			   String password=request.getParameter("password");
			  
			   String idnumber="";	   
			   Boolean ok=false;
			   if(email==null || email.equals("") || password==null || password.equals("")){
				    out.print("資料未齊全");
			   }else{
				   String sql="use ImageStock";
				   con.createStatement().execute(sql);
				   sql="Select * from member";
				   PreparedStatement pstmt = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				   ResultSet rs=pstmt.executeQuery();
				   while(rs.next()){
					   if(email.equals(rs.getString(4)) && password.equals(rs.getString(8))){
						   ok=true;
						idnumber=rs.getString(1);
					   }
				   }
				   if(ok){ 
					   session.setAttribute("online",idnumber);					   
  					   response.sendRedirect("index.jsp");
				   }else{
					   out.print("登入失敗");
				   }
			   }
			 
		   }
     
              
//Step 6: 關閉連線
           con.close();
        }            
        catch (SQLException sExec) {
           out.println("SQL錯誤!" + sExec.toString());
        }
    }       
    catch (ClassNotFoundException err) {
          out.println("class錯誤" + err.toString());
    }   
	%> 