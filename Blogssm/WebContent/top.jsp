<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html lang="zxx">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <style type="text/css">
			@font-face{
				font-family:aa;
				src:url("font/STXINGKA.TTF");
			}			
		</style>

    </head>

    <body>
        
        <!-- Top header -->
        <header class="top-header"style="background-color:#121212;"> 
            <div class="container"> 
                <div class="row"> 
                    <div class="col-md-6 col-lg-6"> 
                    </div>
                    
                    <div class="col-md-6 col-lg-6 text-right"> 
                    
                    <c:choose>
                    <c:when test="${sessionScope.sessionmember ne '' && sessionScope.sessionmember!=null}">
                        <ul class="top-social-links"> 
                            <li><a href="wenzhanglistqt.do"style="color:#E8E8E8;">文章管理</a></li>
                            <li><a href="memberinfoEditshow.do?msg=gr"style="color:#E8E8E8;">个人信息</a></li>
                            <li><a href="memberinfoEditshow.do?msg=mm"style="color:#E8E8E8;">个人密码</a></li>
                        </ul>
                        <ul class="login-regi-links"> 
                            <li><a href="#"style="color:#E8E8E8;">${sessionScope.sessionmember.tname } 你好</a> ！</li>
                            <li><a href="memebrtuichu.do"style="color:#E8E8E8;">注销</a></li>
                        </ul>
                        </c:when>
                        
                        <c:otherwise>
                        <ul class="login-regi-links"> 
                            <li><a href="login.jsp"style="color:#E8E8E8;">登录</a></li>
                            <li><a href="register.jsp"style="color:#E8E8E8;">注册</a></li>
                        </ul>
                        </c:otherwise>
                        
                        </c:choose>
                        
                    </div>
                </div>
            </div>
        </header>
        <!-- End top header -->
  
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light edu-navbar header-sticky"style="background-color:#1E1E20;">
            <div class="container">
                <a class="navbar-brand" href="index.do" style="font-weight: 900;color:#F44336;font-family:'aa';font-size:250%;">Gameta</a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                    <ul class="navbar-nav ml-auto" >
                        
                        <li class="nav-item active dropdown" >
                        <a class="nav-link" href="index.do"style="color:#F44336;font-weight: 900;"> Home</a>
                        </li>
                     
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="wenzhanglb.do"style="color:#F44336;"> 文章信息</a>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="listnews.do" id="navbarDropdownBlog" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"style="color:#F44336;">文章分类</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownBlog">
                            	<c:forEach items="${typelist }" var="type">
                                	<li><a class="dropdown-item" href="wenzhanglb.do?key1=${type.id }"style="background-color:#E8E8E8;">${type.name }</a></li>
                             	</c:forEach>
                            </ul>
                        </li>
                        
                        
                    </ul>
                </div>
            </div>
        </nav>
        
    
       <script type="text/javascript">
       function account(totalstr){
       	location.replace("skipfukuan.do?totalstr="+totalstr);
       }
       
       </script>
    </body>
</html>