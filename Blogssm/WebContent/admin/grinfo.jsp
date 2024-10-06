<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                                <h2>表单新增</h2>
                                <div class="clearfix"></div>
                            </div><!--/.c_title-->
                            <div class="c_content">

                                <form class="validator form-horizontal " id="signupForm" method="post" action="adminEdit.do">
                                <input type="hidden" name="id" value="${admin.id }">
                               	 <div class="form-group ">
                                        <label for="firstname" class="control-label col-lg-3">用户名:</label>
                                        <div class="col-lg-6">
                                            <input type="text" class=" form-control input-rounded" id="" name="" value="${admin.username }" placeholder="用户名" readonly="readonly" required  />
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="firstname" class="control-label col-lg-3">姓名:</label>
                                        <div class="col-lg-6">
                                            <input type="text" class=" form-control input-rounded" id="realname" name="realname" value="${admin.realname }" placeholder="姓名" required  />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="firstname" class="control-label col-lg-3">性别:</label>
                                        <div class="col-lg-6">
                                            <input type="radio"  id="sex" name="sex"  value="男" <c:if test="${admin.sex eq '男' }">checked</c:if>/>&nbsp;男&nbsp;&nbsp;&nbsp;
                                            <input type="radio"  id="sex" name="sex"  value="女" <c:if test="${admin.sex eq '女' }">checked</c:if>/>&nbsp;女
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="firstname" class="control-label col-lg-3">年龄:</label>
                                        <div class="col-lg-6">
                                            <input type="text" class=" form-control input-rounded" id="age" name="age" placeholder="年龄" value="${admin.age }" required  />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="firstname" class="control-label col-lg-3">联系方式:</label>
                                        <div class="col-lg-6">
                                            <input type="text" class=" form-control input-rounded" id="tel" name="tel" placeholder="联系方式" value="${admin.tel }" required  />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button class="btn btn-primary " type="submit">提交</button>
                                           <!--  <button class="btn btn-default " type="reset">重置</button> -->
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

	<c:if test="${suc ne null and suc ne ''}">
	<script>
	  layer.msg('${suc}');
	</script>
	</c:if>
</body>

</html>

<!--===== Footer End ========-->