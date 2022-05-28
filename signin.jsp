<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library --> 
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body> 
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
			   String id=request.getParameter("id"); 
			   String password=request.getParameter("password");
			   String idnumber="";	   
			   Boolean ok=false;
			   if(id==null || id.equals("") || password==null || password.equals("")){
				    out.print("資料未齊全");
			   }else{
				   String sql="use b2c";
				   con.createStatement().execute(sql);
				   sql="Select * from members";
				   PreparedStatement pstmt = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				   ResultSet rs=pstmt.executeQuery();
				   while(rs.next()){
					   if(id.equals(rs.getString(2)) && password.equals(rs.getString(5))){
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
    </body>
</html>


<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Sign In</title>
</head>

<body class="d-flex flex-column h-100">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
        <div class="container-fluid">
            <a class="navbar-brand mb-0 h1" href="index.html">
                ImageStock
            </a>
            <button class="navbar-toggler" aria-label="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navContent">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.html">Home</a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="concept.html">Concept</a></li>
                    <li class="nav-item">
                        <a class="nav-link" href="product.html">Product</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#">Category</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="Category/sky.html">Sky</a>
                            <a class="dropdown-item" href="Category/road.html">Road</a>
                            <a class="dropdown-item" href="Category/flower.html">Flower</a>
                            <a class="dropdown-item" href="Category/river.html">River</a>
                        </div>
                    </li>
                    <li>
                        <form class="d-flex">
                            <input type="search" class="form-control me-2" placeholder="KeyWord">
                            <button class="btn btn-outline-secondary" type="submit">Search</button>
                        </form>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item">
                        <a class="btn btn-light" href="signup.html"> Don't Have an Account? </a></li>
                    <li class="nav-item">
                        <a class="btn btn-outline-dark" href="signup.html"><i class="fa-solid fa-user-plus"></i>
                            Sign
                            Up</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container my-auto" >
        <div class="row g-3">
            <div class="col-md-6 display-5 fw-normal d-flex">
                <span class="m-auto">ImageStock</span>
            </div>
            <div class="col-md-6 card shadow text-center mx-auto">
                <form class="card-body row g-3">
                    <h1 class="card-title fw-lighter">Welcome to ImageStock</h1>
                    <h6 class="h6 fw-normal">Log Into ImageStock</h6>
                    <div class="form-floating">
                        <input type="email" class="form-control" id="email" placeholder="name@example.com">
                        <label for="email">Email address</label></div>
                    <div class="form-floating">
                        <input type="password" class="form-control" id="password" placeholder="Password">
                        <label for="password">Password</label></div>
                    <br>
                    <button class="w-100 btn btn-lg btn-primary" type="submit">Log In</button>
                    <div class="text-muted">or</div>
                    <a class="btn btn-lg" href="signup.html">Create new
                        account</a>
                    <p class="mt-5 mb-3 text-muted">© 2022 ImageStock</p>
                </form>
            </div>
        </div>
    </main>

    <footer class="footer mt-auto py-3 bg-light">
        <div class="container">
            <a class="navbar-brand mt-5 mb-0 h1" href="index.html">
                ImageStock
            </a>
            <span class="mb-3 text-muted"> © 2022 ImageStock </span>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
</script>

</body>

</html>