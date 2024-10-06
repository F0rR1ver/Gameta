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

        <title>游戏网站</title>
        
     <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
    <script charset="utf-8" src="kindeditor/kindeditor-all.js"></script>
    <script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
    <script>
        KindEditor.ready(function(K) {
            window.editor = K.create('#editor_id');
        });
    </script>
    <script>
        KindEditor.ready(function(K) {
            K.create('textarea[name="content"]', {
                uploadJson : '/Blogssm/kindeditor/jsp/upload_json.jsp',
                fileManagerJson : '/Blogssm/kindeditor/jsp/file_manager_json.jsp',
                allowFileManager : true,
                allowImageUpload : true,
                autoHeightMode : true,
                afterCreate : function() {this.loadPlugin('autoheight');},
                afterBlur : function(){ this.sync(); }  //Kindeditor下获取文本框信息
            });
        });
    </script>
        
        
        
        
        
        
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
                            <li class="breadcrumb-item active" aria-current="page">文章编辑</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
        
        <!-- Login -->
        <section class="login-section pt-100 pb-180"style="background-image:url(movies/界面/3.jpg);margin-top: -10px;">
            <div class="container"style="background-color:#FCED0A);">
                <div class="register-form box-content">
                    <h3 class="title">文章编辑</h3>
                    <form action="wenzhangEdit.do" method="post">
                            <input type="hidden"  id="id" name="id" value="${wenzhang.id }">
                    <div class="form-group">
                            <input type="text" class=" form-control" id="url" name="filename" value="${wenzhang.filename }" placeholder="点击按钮上传图片" required />
                            <input type='button' value='上传'  onClick="up('url')" style="width: 60px;height: 30px;display: inline-block"/>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" id="title" name="title" value="${wenzhang.title }" placeholder="文章标题" required>
                        </div>
                        <div class="form-group">
                        <select name="typeid" class=" form-control" required>
                           <option value="">选择文章类型</option>
                            <c:forEach items="${typelist }" var="type">
                            <option value="${type.id }" ${wenzhang.typeid eq type.id?"selected":"" }>${type.name }</option>
                            </c:forEach>
                           </select>
                        </div>
                        
                         <div class="form-group">
                          <textarea rows="" id="editor_id" name="content" style="width: 500px;height: 300px;" cols="">${wenzhang.content }</textarea>
                         
                        </div>
                        

                        
                        <div class="form-foot"> 
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
    </body>
</html>