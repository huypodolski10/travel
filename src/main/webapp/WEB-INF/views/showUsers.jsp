<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Admin Home</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="/template/assets/images/favicon.png"/>"/>
    <link href="<c:url value="/template/assets/plugins/tables/css/datatable/dataTables.bootstrap4.min.css"/>"
          rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link href="<c:url value="/template/css/style.css"/>" rel="stylesheet">
    <script src="<c:url value="/template/js/modernizr-3.6.0.min.js"/>"></script>
</head>

<body class="v-light horizontal-nav">
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10"></circle>
        </svg>
    </div>
</div>
<div id="main-wrapper">
    <!-- header -->
    <div class="header">
        <div class="nav-header">
            <div class="brand-logo"><a href="#"><b><img src="<c:url value="/template/assets/images/logo.png"/>" alt="">
            </b><span class="brand-title"><img src="<c:url value="/template/assets/images/logo-text.png"/>"
                                               alt=""></span></a>
            </div>
            <div class="nav-control">
                <div class="hamburger"><span class="line"></span> <span class="line"></span> <span class="line"></span>
                </div>
            </div>
        </div>
        <div class="header-content">
            <div class="header-left">
                <ul>
                    <li class="icons position-relative"><a href="javascript:void(0)"><i
                            class="icon-magnifier f-s-16"></i></a>
                        <div class="drop-down animated bounceInDown">
                            <div class="dropdown-content-body">
                                <div class="header-search" id="header-search">
                                    <form action="#">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Search">
                                            <div class="input-group-append"><span class="input-group-text"><i
                                                    class="icon-magnifier"></i></span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="header-right">
                <ul>
                    <li class="icons"><a href="javascript:void(0)"><i class="mdi mdi-bell f-s-18"
                                                                      aria-hidden="true"></i>
                        <div class="pulse-css"></div>
                    </a>
                        <div class="drop-down animated bounceInDown">
                            <div class="dropdown-content-heading"><span class="text-left">Recent Notifications</span>
                            </div>
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/1.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Mr. Dmitry</div>
                                                <div class="notification-text">5 members joined today</div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/2.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Mariam</div>
                                                <div class="notification-text">likes a photo of you</div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/3.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Tasnim</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/4.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Ishrat Jahan</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="text-center"><a href="#" class="more-link">See All</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="icons"><a href="javascript:void(0)"><i class="mdi mdi-comment f-s-18"
                                                                      aria-hidden="true"></i>
                        <div class="pulse-css"></div>
                    </a>
                        <div class="drop-down animated bounceInDown">
                            <div class="dropdown-content-heading"><span class="text-left">2 New Messages</span>
                            </div>
                            <div class="dropdown-content-body">
                                <ul>
                                    <li class="notification-unread">
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/1.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Saiul Islam</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-unread">
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/2.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Ishrat Jahan</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/3.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Saiul Islam</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img class="pull-left m-r-10 avatar-img"
                                                 src="<c:url value="/template/assets/images/avatar/4.jpg"/>" alt="">
                                            <div class="notification-content">
                                                <small class="notification-timestamp pull-right">02:34 PM</small>
                                                <div class="notification-heading">Ishrat Jahan</div>
                                                <div class="notification-text">Hi Teddy, Just wanted to let you ...
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="text-center"><a href="#" class="more-link">See All</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="icons"><a href="javascript:void(0)"><i class="mdi mdi-account f-s-20"
                                                                      aria-hidden="true"></i></a>
                        <div class="drop-down dropdown-profile animated bounceInDown">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li><a href="#"><i class="mdi mdi-email"></i> <span>Inbox</span></a>
                                    </li>
                                    <li><a href="#"><i class="mdi mdi-settings"></i> <span>Setting</span></a>
                                    </li>
                                    <li><a href="#"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                    </li>
                                    <li><a href="#"><i class="icon-power"></i> <span>Logout</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- #/ header -->
    <!-- sidebar -->
    <div class="nk-sidebar">
        <div class="nk-nav-scroll">
            <ul class="metismenu" id="menu">
                <li class="nav-label">Main</li>


                <li><a class="has-arrow" href="#" aria-expanded="false"><i class="mdi mdi-table-edit"></i> <span
                        class="nav-text">Table</span></a>
                    <ul aria-expanded="false">
                        <li><a href="/admin/home/table">Show Users</a>
                        </li>
                        <li><a href="#">Insert</a>
                        </li>
                        <li><a href="#">Update</a>
                        </li>
                        <li><a href="#">Delete</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- #/ nk nav scroll -->
    </div>
    <!-- #/ sidebar -->
    <!-- content body -->
    <div class="content-body">
        <div class="container">
            <div class="row page-titles">
                <div class="col p-0">
                    <h4>Hello, <span>Welcome here</span></h4>
                </div>
                <div class="col p-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Table</a>
                        </li>
                        <li class="breadcrumb-item active">Datatable</li>
                    </ol>
                </div>
            </div>
            <!-- row -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Data Table</h4>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered zero-configuration">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Username</th>
                                        <th>Password</th>
                                        <th>Created Date</th>
                                        <th>Created By</th>
                                        <th>Modified Date</th>
                                        <th>Modified By</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="model" items="${models}">
                                        <tr>
                                            <td>${model.id}</td>
                                            <td>${model.userName}</td>
                                            <td>${model.password}</td>
                                            <td>${model.createdDate}</td>
                                            <td>${model.createdBy}</td>
                                            <td>${model.modifiedDate}</td>
                                            <td>${model.modifiedBy}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Username</th>
                                        <th>Password</th>
                                        <th>Created Date</th>
                                        <th>Created By</th>
                                        <th>Modified Date</th>
                                        <th>Modified By</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div>
    <!-- #/ content body -->
    <!-- footer -->
    <div class="footer">
        <div class="copyright">
            <p>Copyright &copy; <a href="https://ule.merkulov.design">Ule</a> 2019, by <a
                    href="https://1.envato.market/tf-merkulove" target="_blank">merkulove</a></p>
        </div>
    </div>
    <!-- #/ footer -->
</div>
<!-- Common JS -->
<script src="<c:url value="/template/assets/plugins/common/common.min.js"/>"></script>
<!-- Custom script -->
<script src="<c:url value="/template/js/custom.min.js"/>"></script>
<script src="<c:url value="/template/assets/plugins/tables/js/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/template/assets/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"/>"></script>
<script src="<c:url value="/template/assets/plugins/tables/js/datatable-init/datatable-basic.min.js"/>"></script>
</body>

</html>