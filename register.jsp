<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<%@include file="config.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="Asset/css/bootstrap.min.css">
    <title>Register</title>
</head>


<body>
    <%
    String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String address = request.getParameter("address");
    String month = request.getParameter("month");
    String day = request.getParameter("day");
    String year = request.getParameter("year");

	if ((name != null && !name.equals("")) && (password != null && !password.equals("")) && (email != null && !email.equals("")))
	{
		sql = "SELECT * FROM member WHERE email = '" + email + "'";
		rs = smt.executeQuery(sql);
		if (rs.next())
		{
%>
    <script>
        swal({
            title: "此帳號已被註冊過!",
            html: "<input type='button' class='swal-btn btn btn-warning' onclick='javascript:history.back();' value='請重新註冊'></input>",
            showConfirmButton: false,
            allowOutsideClick: false,
            allowEscapeKey: false
        });
    </script>
    <%
		}
		else {
			sql = "INSERT INTO member(name, email, password, address, month, day, year) VALUES('" + name + "', '" + email + "', '" + password + "', '" + address + "', '" + month + "', '" + day + "', '" + year + "')";
            smt.execute(sql);
            session.setAttribute("member", name);
%>
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Register Succeed</h5>
                </div>
                <div class="modal-body">
                    Click close to pick your favorite Image !
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><a href="signup.jsp"></a>
                        Close</button>
                </div>
            </div>
        </div>
    </div>
    <%
			}
    }
	else {
%>
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
aria-labelledby="staticBackdropLabel" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Register unsuccessful</h5>
        </div>
        <div class="modal-body">
            Information not completed
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><a href="signup.jsp"></a>
                Close</button>
        </div>
    </div>
</div>
</div>
    <%
          }
%>
<script src="Asset/js/bootstrap.bundle.min.js"></script>
</body>
<%
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

</html>