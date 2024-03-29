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

<!-- Begin page -->
<div id="wrapper">
    <jsp:include page="/WEB-INF/layout/navbar-custom.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/layout/left-side-menu.jsp"></jsp:include>


    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-3">
                        <h1><a href="list.html"></a> List Users</h1>
                    </div>
                    <div class="col-lg-7">
                        <form method="get" action="/users?action=search" class="app-search">
                            <div class="app-search-box">
                                <div class="input-group">
                                    <input oninput="search(event)" style="border-radius: 20px" type="text"
                                           id="searchuser" name="searchuser" class="form-control"
                                           placeholder="Search..." value="${requestScope.searchuser}">
                                    <div class="input-group-append">
                                        <button class="btn " type="submit">
                                            <i class="fas fa-search text-dark"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-2 ">
                        <a href="/users?action=create" class="btn btn-primary" style="float: right">Add New User</a>
                    </div>
                </div>
                <div class="row">
                    <table class="table table-hover">
                        <thead class="bg-success text-light">
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Action</th>
                        </thead>
                        <tbody class="bg-light text-secondary">
                        <c:forEach var="user" items="${listUser}">
                            <tr>
                                <td>${user.getId()}</td>
                                <td>${user.getFullName()}</td>
                                <td>${user.getPhone()}</td>
                                <td>${user.getEmail()}</td>
                                <td>${user.getAddress()}</td>
                                <td>
                                    <a href="/users?action=edit&id=${user.getId()}" class="btn btn-outline-secondary"><i
                                            class="fas fa-edit "></i></a>
                                    <a href="/users?action=delete&id=${user.getId()}" class="btn btn-outline-danger"
                                       onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này không?');"><i
                                            class="fas fa-trash "></i></a>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">

                            <c:if test="${requestScope.currentPage != 1}">
                                <li class="page-item"><a class="page-link"
                                                         href="/users?page=${requestScope.currentPage - 1}&searchuser=${requestScope.searchuser}">Previous</a>
                                </li>
                            </c:if>
                            <c:forEach begin="1" end="${noOfPages}" var="i">
                                <c:choose>
                                    <c:when test="${requestScope.currentPage eq i}">
                                        <li class="page-item"><a class="page-link"
                                                                 href="/users?page=${i}&searchuser=${requestScope.searchuser}">${i}</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a class="page-link"
                                                                 href="/users?page=${i}&searchuser=${requestScope.searchuser}">${i}</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${requestScope.currentPage lt requestScope.noOfPages}">
                                <li class="page-item"><a class="page-link"
                                                         href="/users?page=${requestScope.currentPage + 1}&searchuser=${requestScope.searchuser}">Next</a>
                                </li>
                            </c:if>
                        </ul>
                    </nav>
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
