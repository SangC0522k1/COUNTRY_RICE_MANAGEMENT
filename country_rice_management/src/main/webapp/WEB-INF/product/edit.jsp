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

      <!-- Start Content-->
      <div class="container-fluid">



        <div class="row">
          <div class="col-lg-9 " style="margin: auto">

            <h1 class="header-title" style="font-size: 30px;text-align: center">Edit Form</h1>

            <div class="p-4">
              <form  method="post" data-parsley-validate="" novalidate="">
                <c:if test="${product != null}">
                  <input type="hidden" name="id" value="${product.getId()}"/>
                </c:if>
                <div class="form-group">
                  <label for="name">Product Name<span class="text-danger">*</span></label>
                  <input type="text" name="name" parsley-trigger="change" required="" placeholder="Enter Product Name" value="${product.getName()}" class="form-control" id="name">
                </div>

                <div class="form-group">
                  <label for="price">Price<span class="text-danger">*</span></label>
                  <input type="number" name="price" parsley-trigger="change" required="" placeholder="Enter Price" value="${product.getPrice()}" class="form-control" id="price">
                </div>

                <div class="form-group">
                  <label for="quantity">Quantity<span class="text-danger">*</span></label>
                  <input type="number" name="quantity" parsley-trigger="change" required="" placeholder="Enter Quantity" value="${product.getQuantity()}" class="form-control" id="quantity">
                </div>

                <div class="form-group">
                  <label for="image">Image<span class="text-danger">*</span></label>
                  <input type="url" name="image" parsley-trigger="change" alt="image" required="" placeholder="Enter Image" value="${product.getImage()}" class="form-control" id="image">
                </div>

                <div class="form-group">

                </div>

                <div class="form-group text-center mb-0">
                  <button class="btn btn-primary waves-effect waves-light" type="submit">
                    Update
                  </button>
                  <button type="reset" class="btn btn-secondary waves-effect ml-1">
                    <a href="/product">Cancel</a>
                  </button>
                </div>

              </form>

            </div>

          </div>
          <div class="col-lg-3">
            <div style="margin-top: 20px">
              <c:if test="${requestScope['success'] == true}">
                <ul class="alert alert-success">
                  <li style="font-size: 15px">Sửa thành công</li>
                </ul>
              </c:if>
              <c:if test="${!requestScope['errors'].isEmpty()}">
                <ul >
                  <c:forEach items="${requestScope['errors']}" var="item">
                    <li  class="alert alert-danger" style="font-size: 15px">
                        ${item}
                    </li>
                  </c:forEach>
                </ul>
              </c:if>
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

  </div>
  <jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include>

</body>

</html>
