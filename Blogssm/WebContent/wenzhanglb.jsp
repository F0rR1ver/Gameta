<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="zxx">
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
        
        <title>游戏网站</title>
    </head>

    <body>
    <jsp:include page="top.jsp"/>
        
        
<div class="page-banner banner-bg-one">
            <div class="container"> 
                <div class="banner-text"> 
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.do">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">文章信息</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>        
        
        <div class="boxc"style="background-image:url(movies/界面/3.jpg);">
        <div class="search-widget" style="width: 350px;margin-top: -10px;margin-left: 780px;background-color:#FCED0A;">
            <form action="wenzhanglb.do" method="post">
              <input type="text" class="form-control" style="width: 350px;" name="key" value="${key }" placeholder="输入文章标题...">
               <button type="submit" class="btn search-btn">
                <i class="icofont-search"></i>
                </button>
             </form>
           </div>
           </div>
        <!-- Latest News -->
        <section class="latest-news pt-50 pb-80 white-bg"style="background-image:url(movies/界面/3.jpg);">
            <div class="container">
                <div class="row">
                <c:forEach items="${pageInfo.list }" var="wenzhang">
                    <div class="col-md-6 col-lg-4">
                        <div class="single-blog-post"style="background-color:#1E1E20;box-shadow: 0 0 10px grey;">
                            <a href="wenzhangcx.do?id=${wenzhang.id }">
                                <img src="upload/${wenzhang.filename }" alt="" style="width: 350px;height: 240px;">
                            </a>

                            <div class="blog-post-content">
                                <span>  【    ${wenzhang.type.name }   】    <i class="icofont-ui-calendar"></i> ${wenzhang.savetime }</span>
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
                            <a href="wenzhangcx.do?id=${wenzhang.id }" class="default-btn">查看详情</a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                </div>
                
                <!-- Pagination -->
                <c:if test="${fn:length(pageInfo.list) gt 0}">
                
                <nav class="pagination-outer" aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="page-item">
                            <a href="wenzhanglb.do?pageNum=${pageInfo.hasPreviousPage==false?1:pageInfo.prePage}" class="page-link" aria-label="Previous">
                                <i class="icofont-swoosh-left"></i>
                            </a>
                        </li>
                        <c:forEach begin="1" end="${pageInfo.pages}" varStatus="status">
                        <li class="page-item active" ${status.count eq pageInfo.pageNum ?"acvtive":""}">
                            <a class="page-link" href="wenzhanglb.do?pageNum=${status.count}" >${status.count}</a>
                        </li>
                         </c:forEach>
                        
                        <li class="page-item">
                            <a href="wenzhanglb.do?pageNum=${pageInfo.hasNextPage==false? pageInfo.pages : pageInfo.nextPage}" class="page-link" aria-label="Next">
                                <i class="icofont-swoosh-right"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
                
                </c:if>
                <!-- End Pagination -->
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
    </body>
</html>