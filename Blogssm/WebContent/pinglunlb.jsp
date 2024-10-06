<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html lang="zxx">
    <head>
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
                            <li class="breadcrumb-item active" aria-current="page">评论管理</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
        
        <!-- Cart -->
        <div class="boxv"style="background-image:url(movies/界面/3.jpg);">
        <div class="boxz"style="width: 500px;height:130px;">
        	<div class="search-widget" style="width: 350px;margin-top: -10px;margin-left: 780px;">
            	<form action="pinglunlb.do" method="post">
         	<input type="hidden"  name="xwid" value="${xwid }" >
              	<input type="text" class="form-control" style="width: 350px;" name="key" value="${key }" placeholder="输入评论人...">
               		<button type="submit" class="btn search-btn">
                	<i class="icofont-search"></i>
                	</button>
             	</form>
           	</div>
         </div>
         </div>
        
        
        <section class="cart-section pb-80" style="background-image:url(movies/界面/3.jpg);">
            <div class="container">
                <div class="table-responsive cart-table"style="background-color:#E8E8E8;">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                    <th>评论人</th>
                                    <th>评论内容</th>
                                    <th>评论日期</th>
                                    <th>操作</th>
                            </tr>
                        </thead>
                        
                        <tbody>
                            <c:forEach items="${pageInfo.list }" var="pinglun">
                                <tr>
                                    <td>${pinglun.member.tname}</td>
                                    <td>${pinglun.content}</td>
                                    <td>${pinglun.savetime}</td>
                                    <td>
                                    <a href="pinglunSC.do?id=${pinglun.id}&xwid=${xwid }">删除</a>
                                    </td>
                                </tr>
                            
                            </c:forEach>
                            
                         
                        </tbody>
                    </table>
                </div>
                
                <c:if test="${fn:length(pageInfo.list) gt 0}">
                <nav class="pagination-outer" aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="page-item">
                            <a href="pinglunlb.do?pageNum=${pageInfo.hasPreviousPage==false?1:pageInfo.prePage}" class="page-link" aria-label="Previous">
                                <i class="icofont-swoosh-left"></i>
                            </a>
                        </li>
                        <c:forEach begin="1" end="${pageInfo.pages}" varStatus="status">
                        <li class="page-item active" ${status.count eq pageInfo.pageNum ?"acvtive":""}">
                            <a class="page-link" href="pinglunlb.do?pageNum=${status.count}" >${status.count}</a>
                        </li>
                         </c:forEach>
                        
                        <li class="page-item">
                            <a href="pinglunlb.do?pageNum=${pageInfo.hasNextPage==false? pageInfo.pages : pageInfo.nextPage}" class="page-link" aria-label="Next">
                                <i class="icofont-swoosh-right"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
                
                </c:if>
                
                
            </div>
        </section>
        <!-- End Cart -->
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
      
        
        <script type="text/javascript">
        function add(url){
            location.replace(url);
        }
    	</script>
        
    <c:if test="${suc ne null and suc ne ''}">
	<script>
	  layer.msg('${suc}');
	</script>
	</c:if>
        
    </body>
</html>