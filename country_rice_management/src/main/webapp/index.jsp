<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Vertical layout | Zircos - Responsive Bootstrap 4 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Responsive bootstrap 4 admin template" name="description">
    <meta content="Coderthemes" name="author">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <jsp:include page="/WEB-INF/layout/meta_css.jsp"></jsp:include>

</head>

<body>


<div id="wrapper">


    <jsp:include page="/WEB-INF/layout/navbar-custom.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/layout/left-side-menu.jsp"></jsp:include>


    <div class="content-page">
        <div class="content">

            <div class="container-fluid">



                <div  class="row">
                    <img style="width: 100%" src="/assets/images/index.jpg" alt="Image">
                </div>

            </div>

        </div>



        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        2022 - 2025 &copy; Zircos theme by <a href="">Rice</a>
                    </div>
                </div>
            </div>
        </footer>

    </div>

    <jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include>

</body>

</html>
