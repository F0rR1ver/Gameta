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
    
    <link href="<%=path %>/assets/css/global-plugins.css" rel="stylesheet">
    <link href="<%=path %>/assets/vendors/jquery-icheck/skins/all.css" rel="stylesheet" />
    <link href="<%=path %>/assets/vendors/maps/css/jquery-jvectormap-2.0.1.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path %>/assets/vendors/morris-chart/morris.css" rel="stylesheet" >
    <link href="<%=path %>/assets/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
    <link href="<%=path %>/assets/vendors/jquery-ricksaw-chart/css/rickshaw.css" rel="stylesheet"/>
    <link href="<%=path %>/assets/css/flot-chart.css" rel="stylesheet"/>
    <link href="<%=path %>/assets/css/theme.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/style-responsive.css" rel="stylesheet"/>
    <link href="<%=path %>/assets/css/class-helpers.css" rel="stylesheet"/>
    <link href="<%=path %>/assets/css/colors/green.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/turquoise.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/blue.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/amethyst.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/cloud.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/sun-flower.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/carrot.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/alizarin.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/concrete.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/colors/wet-asphalt.css" rel="stylesheet">
     <link href="<%=path %>/assets/fonts/Indie-Flower/indie-flower.css" rel="stylesheet" />
    <link href="<%=path %>/assets/fonts/Open-Sans/open-sans.css?family=Open+Sans:300,400,700" rel="stylesheet" />
    
    <link rel="stylesheet" type="text/css" href="../assets/css/page.css">
    
    <script src="<%=path %>/layer/jquery-2.0.3.min.js"></script>
    <script src="<%=path %>/layer/layer.js"></script>
    
    <title>后台管理</title>

</head>

<body >
                <div class="row" style="margin-top: 60px;"> 

                    <div class="col-md-12">

                        <div class="c_panel">

                            <div class="c_title">
                                <h2>评论信息</h2>
                                <ul class="nav navbar-right panel_options">
                                    <li>
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                    </li>
		                             <li>
                                        <a class="close-link">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div><!--/.c_title-->

                            <div class="c_content">
                                
                                <div class="margin-bottom-20">
                                    <div class="btn-group">
                                     <form action="liuyanlist.do" method="post">
                                      <input type="hidden"  name="xwid" value="${xwid }" >
                                    <div class="input-group" style="margin-left: 500px;">
                                      <input type="text" class="form-control" style="width: 200px;" name="key" value="${key }" placeholder="请输入评论人...">
                                        <button class="btn btn-success" type="submit">搜索</button>
                                       </div> 
                                    </form>
                                    
                                    </div>
                                  </div>
                                  <table class="table table-hover dataTable table table-striped table-bordered" >
                                    <thead>
                                      <tr>
                                        <th class="text-center" >评论人</th>
                                        <th class="text-center" >内容</th>
                                        <th class="text-center" >日期</th>
                                        <th class="text-center" style="width: 10%">操作</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <c:forEach items="${pageInfo.list }" var="liuyan">
                                      <tr align="center">
                                        <td>${liuyan.member.tname }</td>
                                        <td>${liuyan.content}</td>
                                        <td>${liuyan.savetime } </td>
                                        <td >
                                         <a href="liuyanDel.do?id=${liuyan.id }&xwid=${xwid}"  title="删除" ><i class="fa fa-trash"></i></a>
                                        </td>
                                      </tr>
                                        </c:forEach>
                                        
                                        <tr>
                                            <td colspan="8">
                                                <c:if test="${fn:length(pageInfo.list) gt 0}">
                                                <div id="pagediv" style="border:0px solid red;">
                                                    <ul>
                                                        <li><a href="liuyanlist.do?pageNum=${pageInfo.hasPreviousPage==false?1:pageInfo.prePage}">上一页</a></li>
                                                        <c:forEach begin="1" end="${pageInfo.pages}" varStatus="status">
                                                            <li class="pagesz ${status.count eq pageInfo.pageNum ?"acvtive":""}" ><a href="liuyanlist.do?pageNum=${status.count}" >${status.count}</a></li>
                                                        </c:forEach>
                                                        <li><a href="liuyanlist.do?pageNum=${pageInfo.hasNextPage==false? pageInfo.pages : pageInfo.nextPage}">下一页</a></li>
                                                    </ul>
                                                </div>
                                                </c:if>
                                            </td>
                                        </tr>
                                      
                                    </tbody>
                                  </table>
                                
                            </div><!--/.c_content-->

                        </div><!--/.c_panels-->


                    </div>

                </div>

     <script src="<%=path %>/assets/js/global-plugins.js"></script>
     <script src="<%=path %>/assets/js/theme.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/js/tooltipster.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/js/tables.js"></script>
    <script src="<%=path %>/assets/js/table_editable.js"></script>
    
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
	 
	  <script type="text/javascript">
        $(document).ready(function(){
            new WOW().init();
            App.initPage();
            App.initLeftSideBar();
            App.initCounter();
            App.initNiceScroll();
            App.initPanels();
            App.initProgressBar();
            App.initSlimScroll();
            App.initNotific8();
            App.initTooltipster();
            App.initStyleSwitcher();
            App.initMenuSelected();
            App.initRightSideBar();
            App.initSummernote();
            App.initAccordion();
            App.initModal();
            App.initPopover();

        });
    </script>
</body>

</html>

