<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <title>Đăng ký ESD 2025</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
<%@ include file="navbar.jsp" %>

<!-- Hero Start -->
<div class="container-fluid py-5">
    <div class="container py-5">
        <div class="text-center wow fadeIn" data-wow-delay="0.1s">
            <h1 class="mb-5"><span class="text-uppercase text-primary bg-light px-2">Đăng ký</span></h1>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-7">
                <p class="text-center mb-4">
                    Vui lòng điền thông tin của bạn vào biểu mẫu bên dưới để đăng ký tham gia
                    <strong>Hội thảo Môi Trường và Phát Triển Bền Vững (ESD 2025)</strong>.
                </p>

                <div class="wow fadeIn" data-wow-delay="0.3s">
                    <!-- FORM GỬI DỮ LIỆU -->
                    <form action="register-tech" method="post">
                        <div class="row g-3">

                            <!-- Họ tên -->
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Họ và tên" required>
                                    <label for="fullname">Họ và tên</label>
                                </div>
                            </div>

                            <!-- Email -->
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                                    <label for="email">Email</label>
                                </div>
                            </div>

                            <!-- Số điện thoại -->
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại"
                                           maxlength="11" pattern="[0-9]{10,11}" required
                                           oninput="this.value = this.value.replace(/[^0-9]/g, '');">
                                    <label for="phone">Số điện thoại</label>
                                </div>
                            </div>

                            <!-- Loại khách -->
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <select class="form-select" id="type" name="type" required>
                                        <option value="" selected disabled>Chọn loại khách</option>
                                        <option value="sinhvien">Sinh viên</option>
                                        <option value="giangvien">Giảng viên</option>
                                        <option value="khachtudo">Khách tự do</option>
                                    </select>
                                    <label for="type">Loại khách</label>
                                </div>
                            </div>

                            <!-- Nút gửi -->
                            <div class="col-12">
                                <input type="hidden" name="eventName" value="Hội thảo Công nghệ">
                                <button class="btn btn-primary w-100 py-3" type="submit">Gửi đăng ký</button>
                            </div>
                        </div>
                    </form>
                    <!-- END FORM -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Hero End -->
<%@ include file="footer.jsp" %>
<%--<%@ include file="footer.jsp" %>--%>

<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
