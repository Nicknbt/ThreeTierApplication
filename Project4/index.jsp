<!doctype html>
<%--  
--%>
<%
    String textBox = (String) session.getAttribute("textBox");
    String result = (String) session.getAttribute("result");

%>
    
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<style>
	h1 {text-align: center;}
	div {text-align: center;}
	div.a{top: 50%;
    left: 50%;}
	body{text-align: center}

	</style>
    <!-- Bootstrap CSS -->
    <title>Project 4</title>

     <script src="reset.js"></script>  

    
</head>

<body>


    <div class="container-fluid ">
        <row class="row justify-content-center">
            <h1 class="text-center col-sm-12 col-md-12 col-lg-12">Welcome to the Spring 2020 Project 4 Enterprise System <br/> A Remote Database Management System </h1>
            <div class="text-center col-sm-12 col-md-12 col-lg-12"> You are connected to the Project 4 Enterprise System Database.</div>
            <div class="text-center col-sm-12 col-md-12 col-lg-12"> Please enter any valid SQL query or update statement.</div>
            <div class="text-center col-sm-12 col-md-12 col-lg-12"> If no query/update command is initially provided the Execute button will display all supplier information in the database.</div>
            <div class="text-center col-sm-12 col-md-12 col-lg-12">All execution results will appear below</div>
            <form action = "/Project4/mySQLServlet" method = "post" style="margin-top: 15px;" class="text-center">
                <div class="form-group row">
                    <div class=" col-sm-12 col-md-12 col-lg-12">
                        <textarea name="textBox" class="form-control" id="textBox" rows="8" cols="50"><%= textBox %></textarea>
                    </div>
                </div>

                <button style="margin-bottom: 15px;" type="submit" class="btn btn-dark">Execute Command</button>
                <button onClick="reset();" style="margin-bottom: 15px;" type="reset" class="btn btn-dark">Reset Form</button>
            </form>
        </row>
    </div>


    <div class="a">
        <%-- jsp statement with out sql response--%>
        <%= result %>
    </div>

  
</body>

</html>