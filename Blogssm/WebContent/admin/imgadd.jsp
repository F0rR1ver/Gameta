<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="description" content="">
    <meta name="keywords" content="thema bootstrap template, thema admin, bootstrap, admin template, bootstrap admin">

    <meta name="author" content="LanceCoder">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link rel="shortcut icon" href="">
    <title>首页</title>

    <link href="<%=path%>/assets/css/global-plugins.css" rel="stylesheet">
    <link href="<%=path%>/assets/vendors/jquery-icheck/skins/all.css" rel="stylesheet" />
    <link href="<%=path%>/assets/css/theme.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/style-responsive.css" rel="stylesheet"/>
    <link href="<%=path%>/assets/css/class-helpers.css" rel="stylesheet"/>
    <link href="<%=path%>/assets/css/colors/green.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/turquoise.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/blue.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/amethyst.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/cloud.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/sun-flower.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/carrot.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/alizarin.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/concrete.css" rel="stylesheet">
    <link href="<%=path%>/assets/css/colors/wet-asphalt.css" rel="stylesheet">
</head>

<body id="default-scheme">

                
            <section class="wrapper" style="margin-left: -30px;">
                <div class="row" style="margin-top: 30px;">
                    <div class="col-md-12">
                        <div class="c_panel">
                            <div class="c_title">
                                <h2>轮播图片新增</h2>
                                <div class="clearfix"></div>
                            </div><!--/.c_title-->
                            <div class="c_content">

                                <form class="validator form-horizontal " id="signupForm" method="post" action="imgAdd.do">
                                    <div class="form-group ">
                                        <label for="firstname" class="control-label col-lg-3">轮播图片:</label>
                                        <div class="col-lg-6">
                                            <input type="text" class=" form-control input-rounded" id="url" name="filename" placeholder="点击按钮上传图片" required  /><br>
                                       		 <input type='button' value='上传'  class="layui-input"  onClick="up('url')" style="width: 60px;height: 30px;display: inline-block"/>
                                       
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary " type="submit">提交</button>
                                            <button class="btn btn-default " type="reset">重置</button>
                                        </div>
                                    </div>
                                </form>
                                
                                
                            </div>

                        </div>

                    </div>

                </div>
</section>

	<script src="<%=path %>/layer/jquery-2.0.3.min.js"></script>
    <script src="<%=path %>/layer/layer.js"></script>
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

<!--===== Footer End ========-->