<%@include file="/common/taglib.jsp" %>
<!DOCTYPE>
<html lang="en" class="h-100" id="login-page1">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Login Page</title>
    <%-- Favicon icon --%>
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/template/assets/images/favicon.png"/>"/>
    <%-- Custom Stylesheet --%>
    <link href="<c:url value="/template/css/style.css"/>" rel="stylesheet">
    <script src="<c:url value="/template/js/modernizr-3.6.0.min.js"/>"></script>
</head>
<body class="h-100">
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"></circle>
        </svg>
    </div>
</div>
<div class="login-bg h-100">
    <div class="container h-100">
        <div class="row justify-content-center h-100">
            <div class="col-xl-6">
                <div class="form-input-content">
                    <div class="card">
                        <div class="card-body">
                            <div class="logo text-center">
                                <a href="#">
                                    <img src="<c:url value="/template/assets/images/f-logo.png"/>" alt="">
                                </a>
                            </div>
                            <h4 class="text-center m-t-15">Log into Your Account</h4>
                            <form class="m-t-30 m-b-30" action="/home" id="loginFrom" method="POST" modelAtrribute="register">
                                <c:if test="${not empty message}">
                                    <div class="alert alert-${alert}">
                                            ${message}
                                    </div>
                                </c:if>
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" id="username" name="username"
                                           placeholder="Username">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" id="password" name="password"
                                           placeholder="Password">
                                </div>
                                <div class="form-row">
                                    <div class="from-group col-md-6">
                                        <div class="form-check p-l-0">
                                            <input class="form-check-input" type="checkbox" id="basic_checkbox_1">
                                            <label class="form-check-label" for="basic_checkbox_1">Check me out</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 text-right"><a href="#">Forgot Password?</a>
                                    </div>
                                </div>
                                <div class="text-center m-b-15 m-t-15">
                                    <button type="submit" class="btn btn-primary">Sign in</button>
                                </div>
                            </form>
                            <div class="text-center">
                                <h5 class="m-b-30">Or Login with</h5>
                                <ul class="list-inline">
                                    <li class="list-inline-item m-t-10"><a href="#" class="btn btn-facebook"><i
                                            class="fa fa-facebook"></i></a></li>
                                    <li class="list-inline-item m-t-10"><a href="#" class="btn btn-twitter"><i
                                            class="fa fa-twitter"></i> </a></li>
                                    <li class="list-inline-item m-t-10"><a href="#" class="btn btn-linkedin"><i
                                            class="fa fa-linkedin"></i> </a></li>
                                    <li class="list-inline-item m-t-10"><a href="#" class="btn btn-google-plus"><i
                                            class="fa fa-google-plus"></i> </a></li>
                                </ul>
                                <p class="m-t-30">Don't have an account? <a href="#">Register Now</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%-- #/ container--%>
<%-- Common JS--%>
<script src="<c:url value="/template/assets/plugins/common/common.min.js"/>"></script>
<%-- Custom script--%>
<script src="<c:url value="/template/js/custom+mini-nav.js"/>"></script>
</body>
</html>