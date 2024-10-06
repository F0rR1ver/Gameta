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
        <style type="text/css">
			.box{
				width: 100%;
				height: 500px;
				display:flex;				
				background-image:url(movies/界面/2.jpg);
				margin: 0 auto;
			}
			}
		</style>
        

        <title>首页</title>
    </head>

    <body>
        <div class="preloader">
            <div class="loader">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <jsp:include page="top.jsp"/>
        
        
                       
        
         <!-- Hero Slider -->
         <div class="box">
        	<div class="hero-slider owl-carousel owl-theme owl-theme-1">
            	<c:forEach items="${imglist }" var="img">           
            	<div style="width: 1050px;height: 500px;margin: 0 auto;box-shadow: 0 0 10px grey;">
            	<img alt="" src="upload/${img.filename}" style="width: 100%;height: 500px;">
            	</div>
            	</c:forEach>           
        	</div>
        </div>

        <!-- Latest News -->
        <section class="latest-news pt-50 pb-30"style="background-image:url(movies/界面/3.jpg);">
            <div class="container"style="background-color:#FCED0A;">
                <div class="section-header">
                
                    <h2 style="font-size: 30px;"><a href="listnews.do" style="color: #121212;">最新文章</a></h2>
                </div>
                
                <div class="news-carosel owl-carousel owl-theme owl-theme-s2">
                    <!-- Blog Post #1 -->
                    <c:forEach items="${wenzhanglist }" var="wenzhang" begin="0" end="6">
                    <div class="single-blog-post"style="background-color:#1E1E20;box-shadow: 0 0 10px grey;">
                        <a href="wenzhangcx.do?id=${wenzhang.id }"><img src="upload/${wenzhang.filename }" style="width: 350px;height: 240px;" ></a>
                        
                        <div class="blog-post-content">
                            <span>   【    ${wenzhang.type.name }   】    <i class="icofont-ui-calendar"></i> ${wenzhang.savetime }  </span>
                            <h3 style="font-size: 14px;"><a href="#" title="${wenzhang.title }"style="color:#E8E8E8;font-size:large;">
                           <c:choose>
                        <c:when test="${fn:length(wenzhang.title) gt 20}">
                        ${fn:substring(wenzhang.title,0,20) }...
                        </c:when>
                        <c:otherwise>
                     ${wenzhang.title }
                        </c:otherwise>
                        </c:choose>
                            </a></h3>
                            <a href="wenzhangcx.do?id=${wenzhang.id }" class="default-btn"style="color: #E8E8E1;background-color:#F44336;">查看详情</a>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <!-- End Latest News -->
       
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
        function addCart(id){
        	$.ajax({
        		type:"post",
        		url:"cartadd.do?kcid="+id,
        		date:"",
        		success:function(msg){
        		if(msg==1){
        			layer.msg("添加成功");
        		}else if(msg==0){
        		location.replace('login.jsp');
        		}else{
        	    layer.msg("已添加该文章");
        		}
        	}
        	})
        	}
        </script>
    </body>
</html>