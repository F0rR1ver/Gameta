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

        <title>个人信息</title>
    </head>

    <body>
        <jsp:include page="top.jsp"/>
        
        <!-- Page Banner -->
        <div class="page-banner banner-bg-one">
            <div class="container"> 
                <div class="banner-text"> 
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.do"style=“color:#F44336;”>Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page"style=“color:#F44336;”>个人信息</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
        
        <!-- Login -->
        <section class="login-section pt-100 pb-180"style="background-image:url(movies/界面/3.jpg);margin-top: -10px;">
            <div class="container">
                <div class="register-form box-content"style="box-shadow: 0 0 10px grey;">
                    <h3 class="title">个人信息</h3>
                    <form action="mgrinfo.do" method="post">
                    <input type="hidden" name="id" value="${member.id }">
                        <div class="form-group">
                            <input type="text" class="form-control" id="uname" name="uname" value="${member.uname }" placeholder="用户名" readonly="readonly" required>
                        </div>

                        <div class="form-group">
                            <input type="text" class=" form-control" id="url" value="${member.filename }" name="filename" placeholder="点击按钮上传头像" required />
                            <input type='button' value='上传'  onClick="up('url')" style="width: 60px;height: 30px;display: inline-block"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="tname" name="tname" value="${member.tname }" placeholder="姓名" required>
                        </div>
                        <div class="form-group">
                            <input type="radio" id="sex" name="sex" value="男" <c:if test="${member.sex eq '男' }">checked</c:if>/>&nbsp;男&nbsp;&nbsp;&nbsp;
                            <input type="radio" id="sex" name="sex" value="女" <c:if test="${member.sex eq '女' }">checked</c:if>/>&nbsp;女
                        </div>
                        <div class="form-group">
                            <input type="number" min='1' class="form-control" id="age" name="age" value="${member.age }" placeholder="年龄" required>
                        </div>
                        <div class="form-group">
                            <input type="tel" class="form-control" id="tel" name="tel" value="${member.tel }" placeholder="联系方式" required>
                        </div>
                         <div class="form-group">
                            <input type="text" class="form-control" id="mail" name="mail" value="${member.mail }" placeholder="邮箱" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="weixin" name="weixin" value="${member.weixin }" placeholder="微信" required>
                        </div>
                        <div class="form-group">
                            <input type="date" class="form-control" id="srtime" name="srtime" value="${member.srtime }" placeholder="" required>
                        </div>

                        
                        <div class="form-foot"style="background-color:#F44336;"> 
                            <button type="submit" class="btn default-btn"style="background-color:#F44336;">提交</button>
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
	    function up(tt)
	    {
	        layer.open({
	            type: 2,
	            title: '上传文件',
	            shadeClose: true,
	            shade: false,
	            maxmin: true, //开启最大化最小化按钮
	            area: ['450px', '200px'],
	            content: '/Blogssm/upload.jsp?Result='+tt
	        });
	    }
	</script>
	
	 <c:if test="${suc ne null and suc ne ''}">
	<script>
	  layer.msg('${suc}');
	</script>
	</c:if>
	
    </body>
</html>