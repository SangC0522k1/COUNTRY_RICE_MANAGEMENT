
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<!-- Begin page -->
<div id="wrapper">

    <jsp:include page="/WEB-INF/layout/navbar-custom.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/layout/left-side-menu.jsp"></jsp:include>

    <div class="content-page">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3">
                        <h1>List Product</h1>
                    </div>
                    <div class="col-lg-6">
                        <form method="get" action="/product?action=search" class="app-search">
                            <div class="app-search-box">
                                <div class="input-group">
                                    <input oninput="search(event)" style="border-radius: 20px" type="text" name="searchproduct" class="form-control" placeholder="Search..." value="${requestScope.searchproduct}">
                                    <div class="input-group-append">
                                        <button class="btn " type="submit">
                                            <i class="fas fa-search text-dark"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-3 ">
                        <a href="/product?action=create" class="btn btn-primary" style="float: right">Add New Product</a>
                    </div>
                </div>
                <div class="row">
                    <table class="table table-hover">
                        <thead class="bg-success text-center text-light">
                        <th>ID</th>
                        <th>Image</th>
                        <th>Title</th>
                        <th style="text-align: end">Price (VNĐ)</th>
                        <th style="text-align: end">Quantity (kg)</th>
                        <th>Action</th>
                        </thead>
                        <tbody class="bg-light text-secondary">
                        <c:forEach var="product" items="${listProduct}">
                            <tr>
                                <td>${product.getId()}</td>
                                <td style="width: 10%; height: 100px;"><img src="${product.getImage()}" style="width: 100%;height: 100%" alt="image"></td>
                                <td>${product.getName()}</td>
                                <td style="text-align: right">
                                    <fmt:formatNumber value="${product.getPrice()}" type="currency" pattern="#,### đ"></fmt:formatNumber>
                                </td>
                                <td style="text-align: right">
                                    <fmt:formatNumber value="${product.getQuantity()}" type="currency" pattern="#,###.## Kg"></fmt:formatNumber>
                                </td>
                                <td style="text-align: center">
                                    <a href="/product?action=edit&id=${product.getId()}" class="btn btn-outline-secondary"><i class="fas fa-edit"></i></a>
                                    <a href="/product?action=delete&id=${product.getId()}" class="btn btn-outline-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
                <nav aria-label="Page navigation example">
                    <ul class="pagination">

                        <c:if test="${requestScope.currentPage != 1}">
                            <li class="page-item"><a class="page-link"
                                                     href="/product?page=${requestScope.currentPage - 1}&searchproduct=${requestScope.searchproduct}">Previous</a>
                            </li>
                        </c:if>
                        <c:forEach begin="1" end="${noOfPages}" var="i">
                            <c:choose>
                                <c:when test="${requestScope.currentPage eq i}">
                                    <li class="page-item"><a class="page-link"
                                                             href="/product?page=${i}&searchproduct=${requestScope.searchproduct}">${i}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item"><a class="page-link"
                                                             href="/product?page=${i}&searchproduct=${requestScope.searchproduct}">${i}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                        <c:if test="${requestScope.currentPage lt requestScope.noOfPages}">
                            <li class="page-item"><a class="page-link"
                                                     href="/product?page=${requestScope.currentPage + 1}&searchproduct=${requestScope.searchproduct}">Next</a>
                            </li>
                        </c:if>
                    </ul>
                </nav>

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
    <!-- Vendor js -->
    <jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include>

</body>

</html>
