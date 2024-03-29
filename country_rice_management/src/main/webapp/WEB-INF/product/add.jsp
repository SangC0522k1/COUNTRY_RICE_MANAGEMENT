
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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

            <!-- Start Content-->
            <div class="container-fluid" style="margin-top: 25px">



                <div class="row">
                    <div class="col-lg-9 " style="margin: auto">

                        <h1 class="header-title" style="font-size: 30px;text-align: center">Product Form</h1>

                        <div class="p-4">
                            <form  method="post" data-parsley-validate="" novalidate="">
                                <div class="form-group">

                                    <label for="name">Product Name<span class="text-danger">*</span></label>
                                    <input type="text" name="name" parsley-trigger="change" required="" placeholder="Enter product name" class="form-control" id="name">
                                </div>

                                <div class="form-group">
                                    <label for="price">Price<span class="text-danger">*</span></label>
                                    <input type="number" name="price" parsley-trigger="change" required="" placeholder="Enter Price" class="form-control" id="price">
                                </div>

                                <div class="form-group">
                                    <label for="quantity">Quantity<span class="text-danger">*</span></label>
                                    <input type="number" name="quantity" parsley-trigger="change" required="" placeholder="Enter Quantity" class="form-control" id="quantity">
                                </div>

                                <div class="form-group">
                                    <label for="image">Image<span class="text-danger">*</span></label>
                                    <input type="url" name="image" parsley-trigger="change" required="" placeholder="Enter Image" class="form-control" id="image">
                                </div>

                                <div class="form-group">

                                </div>

                                <div class="form-group text-center mb-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit">
                                        Create
                                    </button>
                                    <button type="reset" class="btn btn-secondary waves-effect ml-1">
                                        <a href="/product">Cancel</a>
                                    </button>
                                </div>

                            </form>
                        </div>

                    </div>
                    <div class="col-lg-3">
                        <div class="row" style="margin-top: 20px">
                            <div class="col-12">
                                <c:if test="${requestScope['success'] == true}">
                                    <span class="alert alert-success "
                                          style="font-size: 15px">Thêm mới thành công</span>
                                </c:if>
                                <c:if test="${!requestScope['errors'].isEmpty()}">
                                    <c:forEach items="${requestScope['errors']}" var="item">
                                        <div class="alert alert-danger" style="margin-top: -20px;">
                                            <span style="font-size: 15px;">
                                                    ${item}
                                            </span>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    </div>

                    </div>
                 </div>
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        2022 - 2025 &copy; Zircos theme by <a href="">Rice</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

    </div>
    <jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include>

</body>

</html>
