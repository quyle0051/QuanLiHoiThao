<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<div class="container-fluid sticky-top">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light border-bottom border-2 border-white">
            <a href="home.jsp" class="navbar-brand">
                <img src="img/logoo.png" alt="Logo" />
            </a>
            <button type="button" class="navbar-toggler ms-auto me-0" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto">
                    <a href="home.jsp" class="nav-item nav-link active">Trang Chủ</a>
                    <div class="nav-item dropdown">
                        <a href="#!" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Danh Mục Hội Thảo</a>
                        <div class="dropdown-menu bg-light mt-2">
                            <a href="esd.jsp" class="dropdown-item">Hội Thảo Môi Trường</a>
                            <a href="tech.jsp" class="dropdown-item">Hội Thảo Công Nghệ</a>
                            <a href="science.jsp" class="dropdown-item">Hội Thảo Khoa Học</a>
                            <a href="404.jsp" class="dropdown-item">404 Page</a>
                        </div>
                    </div>
                    <a href="contact.jsp" class="nav-item nav-link">Liên Hệ</a>
                </div>
            </div>
        </nav>
    </div>
</div>
