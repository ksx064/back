<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> 

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
			    String sql="use nina";
				con.createStatement().execute(sql);//寫入字串到sql裡面不會有回傳值
				sql="Select * from counter";
				PreparedStatement pstmt = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				ResultSet rs=pstmt.executeQuery();//2223行 寫入字串到sql裡面可是會有回傳值
				rs.next();
				int people =Integer.valueOf(rs.getString(1));
				if(session.isNew())
				people++;
				sql="update counter set people="+ people +";";
				con.createStatement().execute(sql);
				out.print("您是第"+ people +"位客人");
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
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>ImageStock</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand mb-0 " href="index.html">
                ImageStock
            </a>
            <button class="navbar-toggler" aria-label="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navContent">
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
                            <a class="dropdown-item" href="sky.html">Sky</a>
                            <a class="dropdown-item" href="road.html">Road</a>
                            <a class="dropdown-item" href="flower.html">Flower</a>
                            <a class="dropdown-item" href="river.html">River</a>
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
                        <a class="btn btn-light" href="signin.html"><i class="fa-solid fa-arrow-right-to-bracket"></i>
                            Login</a></li>
                    <li class="nav-item">
                        <a class="btn btn-outline-dark" href="signup.html"><i class="fa-solid fa-user-plus"></i> Sign
                            Up</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <header>
        <div class="container coverflow pt-3">
            <div id="carouselarea" class="carousel slide" data-ride="carousel">
                <div class="carousel-indicators">
                    <button aria-label="carousel0" data-bs-target="#carouselarea" data-bs-slide-to="0"
                        class="active"></button>
                    <button aria-label="carousel1" data-bs-target="#carouselarea" data-bs-slide-to="1"></button>
                    <button aria-label="carousel2" data-bs-target="#carouselarea" data-bs-slide-to="2"></button>
                    <button aria-label="carousel3" data-bs-target="#carouselarea" data-bs-slide-to="3"></button>
                </div>

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="Asset/Classification/LandScape/LS1.jpeg" alt="carouselimg0">
                        <div class="carousel-caption">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="bd-placeholder-img rounded-circle" width="140" height="140"
                                        src="/Asset/Classification/Animal/1.JPG" role="img"
                                        aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice"
                                        focusable="false">
                                    <title>Placeholder</title>
                                    <rect width="100%" height="100%" fill="#777"></rect>
                                    </img>

                                    <h2>Heading</h2>
                                    <p>Some representative placeholder content for the three columns of text below the
                                        carousel. This is
                                        the first column.</p>
                                    <p><a class="btn btn-secondary" href="#">View details »</a></p>
                                </div><!-- /.col-lg-4 -->
                                <div class="col-lg-4">
                                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%"
                                            fill="#777" dy=".3em">140x140</text>
                                    </svg>

                                    <h2>Heading</h2>
                                    <p>Another exciting bit of representative placeholder content. This time, we've
                                        moved on to the
                                        second column.</p>
                                    <p><a class="btn btn-secondary" href="#">View details »</a></p>
                                </div><!-- /.col-lg-4 -->
                                <div class="col-lg-4">
                                    <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                                        xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140"
                                        preserveAspectRatio="xMidYMid slice" focusable="false">
                                        <title>Placeholder</title>
                                        <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%"
                                            fill="#777" dy=".3em">140x140</text>
                                    </svg>

                                    <h2>Heading</h2>
                                    <p>And lastly this, the third column of representative placeholder content.</p>
                                    <p><a class="btn btn-secondary" href="#">View details »</a></p>
                                </div>
                            </div>
                            <div class="row h1 ax-auto">Animal</div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="Asset/Classification/LandScape/LS2.jpeg" alt="carouselimg1">
                        <div class="carousel-caption">LandScape</div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="Asset/Classification/LandScape/LS3.jpeg" alt="carouselimg2">
                        <div class="carousel-caption">LandScape</div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="Asset/Classification/LandScape/LS4.jpeg" alt="carouselimg3">
                        <div class="carousel-caption">LandScape</div>
                    </div>
                </div>
                <button class="carousel-control-prev" aria-label="carouselprev" data-bs-target="#carouselarea"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" aria-label="carouselnext" data-bs-target="#carouselarea"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>
        </div>
    </header>

    <main>
        
        <div class="container marketing">

            <!-- Three columns of text below the carousel -->



            <!-- START THE FEATURETTES -->

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your
                            mind.</span></h2>
                    <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting
                        prose here.</p>
                </div>
                <div class="col-md-5">
                    <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                        height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa"
                            dy=".3em">500x500</text>
                    </svg>

                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for
                            yourself.</span></h2>
                    <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of
                        how this layout would work with some actual real-world content in place.</p>
                </div>
                <div class="col-md-5 order-md-1">
                    <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                        height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa"
                            dy=".3em">500x500</text>
                    </svg>

                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
                    <p class="lead">And yes, this is the last block of representative placeholder content. Again, not
                        really intended to be actually read, simply here to give you a better view of what this would
                        look like with some actual content. Your content.</p>
                </div>
                <div class="col-md-5">
                    <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                        height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500"
                        preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa"
                            dy=".3em">500x500</text>
                    </svg>

                </div>
            </div>
            <hr class="featurette-divider">
        </div>
    </main>

    <footer class="footer fixed-bottom m-auto py-3 bg-light">
        <div class="container">
            <a class="navbar-brand mt-5 mb-0 link-dark" href="index.html">
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