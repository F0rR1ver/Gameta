<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html lang="zxx">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap Min CSS -->
        <link rel="stylesheet" href="assetsqt/css/bootstrap.min.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="assetsqt/css/animate.min.css">
        <!-- IcoFont CSS -->
        <link rel="stylesheet" href="assetsqt/css/icofont.min.css">
        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="assetsqt/css/owl.carousel.min.css">
        <!-- Owl Theme Default CSS -->
        <link rel="stylesheet" href="assetsqt/css/owl.theme.default.min.css">
        <!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="assetsqt/css/magnific-popup.css">
        <!-- Main CSS -->
        <link rel="stylesheet" href="assetsqt/css/main.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="assetsqt/css/responsive.css">
        <!-- Favicon -->

        <title>密码修改</title>
    </head>

    <body>
        <jsp:include page="top.jsp"/>
        
        <!-- Page Banner -->
        <div class="page-banner banner-bg-one">
            <div class="container"> 
                <div class="banner-text"> 
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.do">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">密码修改</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
        
        <!-- Login -->
        <section class="login-section pt-100 pb-180" style="background-image:url(movies/界面/3.jpg);margin-top: -10px;">
            <div class="container">
                <div class="register-form box-content"style="background-color:#FCED0A;">
                    <h3 class="title">密码修改</h3>
                    <form action="upassedit.do" method="post">
                    <input type="hidden" name="id" value="${member.id }">
                        <div class="form-group">
                            <input type="password"  class="form-control" id="oldpassword" name="oldpassword"  placeholder="原密码" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control"  id="newpassword" name="newpassword" placeholder="新密码" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" onblur="upassedit()" id="password" name="password"  placeholder="重复新密码" required>
                        </div>

                        
                        <div class="form-foot"> 
                            <button type="submit" class="btn default-btn" style="background-color:#F44336;">提交</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        
        
        <jsp:include page="foot.jsp"/>
    	
        <script src="assetsqt/js/jquery.1.12.4.min.js"></script>
        <script src="assetsqt/js/popper.min.js"></script>
        <script src="assetsqt/js/bootstrap.min.js"></script>
        <script src="assetsqt/js/owl.carousel.min.js"></script>
        <script src="assetsqt/js/jquery.magnific-popup.min.js"></script>
        <script src="assetsqt/js/waypoints.js"></script>
        <script src="assetsqt/js/jquery.counterup.min.js"></script>
        <script src="assetsqt/js/tilt.jquery.min.js"></script>
        <script src="assetsqt/js/form-validator.min.js"></script>
        <script src="assetsqt/js/contact-form-script.js"></script>
        <script src="assetsqt/js/script.js"></script>
        
    <script src="layer/jquery-2.0.3.min.js"></script>
    <script src="layer/layer.js"></script>
    <script type="text/javascript">
    function upassedit(){
		var newpassword = $("#newpassword").val();
		var password = $("#password").val();
		if(newpassword!=password){
			alert("两次密码输入不一致");
			$("#newpassword").val("");
			$("#password").val("");
			return false;
		}
		
    }
    
    </script>
    
	
	 <c:if test="${suc ne null and suc ne ''}">
	<script>
	  layer.msg('${suc}');
	</script>
	</c:if>
	
    </body>
</html>