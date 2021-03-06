<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<!-- If IE use the latest rendering engine -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Set the page to the width of the device and set the zoon level -->
<meta name="viewport" content="width = device-width, initial-scale = 1">
<title>FAKE AMAZON</title>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<style>
.jumbotron{
    background-color:#2E2D88;
    color:white;
}
/* Adds borders for tabs */
.tab-content {
    border-left: 1px solid #ddd;
    border-right: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    padding: 10px;
}
.nav-tabs {
    margin-bottom: 0;
}
</style>
</head>
<body>
  <nav class="navbar navbar-inverse">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="home.jsp">FAKE Amazon</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <% if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
            %>
            <a href = "login.jsp"><button type="button" class="btn btn-default navbar-btn">Log in</button></a>
            <a href = "signup.jsp"><button type="button" class="btn btn-default navbar-btn">Sign Up</button></a>
            <% }else { %>
            <a href = "categories.jsp"><button type="button" class="btn btn-default navbar-btn">Categories</button></a>
            <a href = "products.jsp"><button type="button" class="btn btn-default navbar-btn">Products</button></a>
            <a href = "dashboard.jsp"><button type = "button" class = "btn btn-default navbar-btn"><%=session.getAttribute("username")%> </button></a>
            <a href = "logout.jsp"><button type = "button" class = "btn btn-default navbar-btn"> Logout </button> </a>
            <% } %>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>

  <h2>
    <%if(null!=session.getAttribute("username")){%>
    Welcome Back! <%=session.getAttribute("username")%>
    <%}%>
  </h2>


  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js"></script>
</body>
</html>
