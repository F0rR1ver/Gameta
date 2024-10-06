<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="assetsqt/css/bootstrap.min.css">
        <link rel="stylesheet" href="assetsqt/css/animate.min.css">
        <link rel="stylesheet" href="assetsqt/css/icofont.min.css">
        <link rel="stylesheet" href="assetsqt/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assetsqt/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="assetsqt/css/magnific-popup.css">
        <link rel="stylesheet" href="assetsqt/css/main.css">
        <link rel="stylesheet" href="assetsqt/css/responsive.css">
        <script src="layer/jquery-2.0.3.min.js"></script>
    <script src="layer/layer.js"></script>
        <title>游戏网站</title>
        
        
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
                            <li class="breadcrumb-item active" aria-current="page">信息详情</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
        
        <!-- Single Courses -->
        <section class="single-course-area pt-50 pb-80">
            <div class="container">
                <div class="row"> 
                    <div class="">
                        <div class="single-blog-header" style="text-align: center;">
                            <h3>${wenzhang.title }</h3>
                            <span class="date">
                                <i class="icofont-calendar"></i> ${wenzhang.savetime }
                            </span>
                        </div>
                       
                        <div class="single-preview-img" style="text-align: center;">
                            <img src="upload/${wenzhang.filename }" alt="" style="width: 730px;height: 360px;">
                        </div>
                       
                        <div class="single-blog-description mt-30">
                      		  ${wenzhang.content }
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        
        
        <section class="single-course-area pt-10 pb-80" style="background-color: #f8f8f8;">
            <div class="container">
                <div class="row"> 
                <div class="col-lg-10">
                        <div class="comment-area mt-30">
                            <c:forEach items="${lylist }" var="liuyan">
                            <div class="media">
                                <img class="mr-3" src="upload/${liuyan.member.filename }" alt="" style="width: 60px;height: 60px;">
                                <div class="media-body">
                                    <h5 style="font-size: 14px;">${liuyan.member.tname }  &nbsp;&nbsp;&nbsp;  ${liuyan.savetime }</h5>
                                   <!--  <span class="date"> </span> -->
                                    <p>${liuyan.content }</p>
                                </div>
                            </div>
                            </c:forEach>
                            
                            
                        </div>
                        
                        <div class="comment-form-area mt-30">
                            <h3 class="title">评论新增</h3>
                            
                            <div class="comment-form">
                                <form action="liuyanAdd.do" method="post">
                                    <input type="hidden" name="xwid" value="${wenzhang.id }">
                                    <div class="form-group">
                                        <textarea class="form-control" id="" name="content"  rows="5" placeholder="评论内容" required></textarea>
                                    </div>
                                    
                                    <div class="">
                                    <c:if test="${sessionScope.sessionmember ne '' && sessionScope.sessionmember!=null}">
                                    
                                        <button type="submit" class="btn default-btn"style="background-color:#F44336;">提交</button>
                                        </c:if>
                                    </div> 
                                </form>
                            </div>
                        </div>
                    </div>
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
        
         <c:if test="${suc ne null and suc ne ''}">
	<script>
	  layer.msg('${suc}');
	</script>
	</c:if>
    </body>
</html>