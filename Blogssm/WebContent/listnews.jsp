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
                            <li class="breadcrumb-item"><a href="index.do">首页</a></li>
                            <li class="breadcrumb-item active" aria-current="page">所有文章</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>        
        
        <div class="search-widget" style="width: 350px;margin-top: 50px;margin-left: 580px;">
            <form action="listnews.do" method="post">
              <input type="text" class="form-control" style="width: 350px;" name="key" value="${key }" placeholder="输入文章标题...">
               <button type="submit" class="btn search-btn">
                <i class="icofont-search"></i>
                </button>
             </form>
           </div>
        <!-- Latest News -->
        <section class="latest-news pt-50 pb-80 white-bg">
            <div class="container">
                <div class="row">
                <c:forEach items="${pageInfo.list }" var="news">
                    <div class="col-md-6 col-lg-4">
                        <div class="single-blog-post">
                            <a href="newscx.do?id=${news.id }">
                                <img src="upload/${news.filename }" alt="" style="width: 350px;height: 240px;">
                            </a>

                            <div class="blog-post-content">
                                <span>  【    ${news.type.name }   】    <i class="icofont-ui-calendar"></i> ${news.savetime }</span>
                                <h3 style="font-size: 14px;"><a href="#" title="${news.title }">
                           <c:choose>
                        <c:when test="${fn:length(news.title) gt 20}">
                        ${fn:substring(news.title,0,20) }...
                        </c:when>
                        <c:otherwise>
                     ${news.title }
                        </c:otherwise>
                        </c:choose>
                            </a></h3>
                            <a href="newscx.do?id=${news.id }" class="default-btn">查看详情</a>
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
                            <a href="listnews.do?pageNum=${pageInfo.hasPreviousPage==false?1:pageInfo.prePage}" class="page-link" aria-label="Previous">
                                <i class="icofont-swoosh-left"></i>
                            </a>
                        </li>
                        <c:forEach begin="1" end="${pageInfo.pages}" varStatus="status">
                        <li class="page-item active" ${status.count eq pageInfo.pageNum ?"acvtive":""}">
                            <a class="page-link" href="listnews.do?pageNum=${status.count}" >${status.count}</a>
                        </li>
                         </c:forEach>
                        
                        <li class="page-item">
                            <a href="listnews.do?pageNum=${pageInfo.hasNextPage==false? pageInfo.pages : pageInfo.nextPage}" class="page-link" aria-label="Next">
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