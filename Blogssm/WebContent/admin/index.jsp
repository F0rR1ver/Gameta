<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    <title>后台管理系统</title>

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




</head>

<body id="default-scheme">

    <!--======== Start Style Switcher ========-->    
    <i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
    <div class="style-switcher">
        <div class="style-swticher-header">
            <div class="style-switcher-heading fg-white">色卡</div>            
            <div class="theme-close"><i class="icon-close"></i></div>
        </div>

        <div class="style-swticher-body">
            <ul class="list-unstyled">
                <li class="theme-alizarin" data-style="alizarin"></li>
                <li class="theme-default theme-active" data-style="default"></li>
                <li class="theme-turquoise" data-style="turquoise"></li>
                <li class="theme-blue" data-style="blue"></li>
                <li class="theme-amethyst" data-style="amethyst"></li>
                <li class="theme-cloud" data-style="cloud"></li>
                <li class="theme-sun-flower" data-style="sun-flower"></li>
                <li class="theme-carrot" data-style="carrot"></li>
                <li class="theme-concrete" data-style="concrete"></li>
                <li class="theme-wet-ashphalt" data-style="wet-ashphalt"></li>
            </ul>         
        </div>
    </div><!--/style-switcher-->

    <section id="container">

        <!--header start-->
        <header class="header fixed-top clearfix">

            <!--logo start-->
            <div class="brand">
                <a href="<%=path %>/admin/index.jsp" class="logo"> 后台管理系统 </a>
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars"></div>
                </div>
            </div>
            <div class="top-nav">

               <!--  <ul class="nav navbar-nav navbar-left" style="margin-left:30px;">
                    <li>
                        <a href="javascript:void(0)" class="btn-menu-grid" title="Menu Grid">
                            <span class="icon-grid"></span>
                        </a>
                    </li>
                </ul>  -->   
                
                <%-- 顶部导航栏上显示登陆者信息
                
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                        <a href="javascript:void(0);" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <img src="<%=path %>/upfile/no.jpg" alt="image">John Doe
                            <span class=" fa fa-angle-down"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-usermenu animated fadeInUp pull-right">
                            <li>
                                <a href="" class="hvr-bounce-to-right">  个人信息</a>
                            </li>
                            <li>
                                <a href="app-pages/page-profile-settings.html" class="hvr-bounce-to-right">
                                    <span class="badge bg-red pull-right">50%</span>
                                    <span>Settings</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="hvr-bounce-to-right">密码修改</a>
                            </li>
                            <li><a href="" class="hvr-bounce-to-right"><i class=" icon-login pull-right"></i> 退出</a>
                            </li>
                        </ul>
                    </li>

                </ul> --%>

            </div>

        </header>    <!--header end-->

        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse md-box-shadowed">
                <!-- sidebar menu start-->
                <div class="leftside-navigation leftside-navigation-scroll">
                    <ul class="sidebar-menu" id="nav-accordion">
                        <li class="sidebar-profile">

                            <div class="profile-options-container">
                                <p class="text-right profile-options"><span class="profile-options-close pe-7s-close fa-2x font-bold"></span></p>

                                <div class="profile-options-list animated zoomIn">
                                    <p><a href="<%=path%>/admin/tuichu.do">注销</a></p>
                                </div>
                                
                            </div>
                            
                            <div class="profile-main">
                                <p class="text-right profile-options"><i class="profile-options-open icon-options-vertical fa-2x"></i></p>
                                <p class="image">
                                    <img alt="image" src="<%=path %>/upload/11.png" width="70">
                                    <span class="status"><i class="fa fa-circle text-success"></i></span>
                                </p>
                                <p>
                                    <span class="name">${admin.realname }  [ ${admin.usertype } ]</span><br>
                                    <span class="position" style="font-family: monospace;"></span>
                                </p>
                            </div>
                        </li>
                        
                        
                        <li class=' '><a href="<%=path %>/admin/index.jsp" class="hvr-bounce-to-right-sidebar-parent active"><span class='icon-sidebar icon-home fa-2x'></span><span> 首页</span></a>
                        </li>
                        <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-portfolio fa-2x'></span><span> 基础信息</span></a>
                            <ul class='sub'>
                                <li><a href="<%=path %>/admin/imglist.do" target="iframe_a">轮播图片</a>
                               
                                </li>
                            </ul>
                        </li>
                        <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-display2 fa-2x'></span><span> 文章信息</span></a>
                            <ul class='sub'>
                                <li><a href="<%=path %>/admin/typelist.do" target="iframe_a">文章分类</a></li>
                                 <li><a href="<%=path %>/admin/wenzhanglist.do" target="iframe_a">文章信息</a>
                            </ul>
                        </li>
                        <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-user fa-2x'></span><span> 用户信息</span></a>
                            <ul class='sub'>
                                <li><a href='<%=path %>/admin/memberlist.do' target="iframe_a">用户管理</a>
                                </li>
                            </ul>
                        </li>
                        <li class='sub-menu '><a href="1" class="hvr-bounce-to-right-sidebar-parent"><span class='icon-sidebar pe-7s-note fa-2x'></span><span> 个人信息</span></a>
                            <ul class='sub'>
                                <li><a href='<%=path %>/admin/adminshow.do' target="iframe_a">个人信息</a>
                                <li><a href='<%=path %>/admin/upassedit.jsp' target="iframe_a">密码修改</a>
                                </li>
                            </ul>
                        </li>
                        
                   
                    </ul>           
                </div>
                <!-- sidebar menu end-->
            </div>
        
        </aside>    <!--sidebar end-->
     <section id="main-content" >
            <section class="wrapper" >
        <iframe src="/Blogssm/admin/welcome.jsp" name="iframe_a" frameborder="0" scrolling="no" width="100%;" onload="this.height=iframe_a.document.body.scrollHeight" ></iframe>
    </section></section>
    </section><!--/.container-->
    
    
    
  
    <script src="<%=path %>/assets/js/global-plugins.js"></script>
    <script src="<%=path %>/assets/vendors/flot/jquery.flot.full.min.js" type="text/javascript"></script>
    <script src="<%=path %>/assets/vendors/jquery-ricksaw-chart/js/rickshaw.min.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/vendors/jquery-ricksaw-chart/js/d3.v2.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/vendors/sparkline/index.js"></script>
    <script src="<%=path %>/assets/vendors/maps/js/jquery-jvectormap-2.0.1.min.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/vendors/maps/js/gdp-data.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/vendors/maps/js/jquery-jvectormap-world-mill-en.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/vendors/maps/js/jquery-jvectormap-us-aea-en.js" type="text/javascript" ></script>
  
    <script src="<%=path %>/assets/js/theme.js" type="text/javascript" ></script>

    <script src="<%=path %>/assets/js/dashboard-green.js" type="text/javascript" ></script>
    <script src="<%=path %>/assets/js/forms.js" type="text/javascript" ></script>

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
            App.initEmail();
            App.initSummernote();
            App.initAccordion();
            App.initModal();
            App.initPopover();
            App.initOwlCarousel();
            App.initSkyCons();
            App.initWidgets();
            
            DashboardGreen.initRickShawGraph();
            DashboardGreen.initFlotGraph();
            DashboardGreen.initChartGraph();
            DashboardGreen.initSparklineGraph();
            DashboardGreen.initDateRange();
            DashboardGreen.initWorldMap();
            DashboardGreen.initEasyPieChart();
            DashboardGreen.initMorrisChart();
            DashboardGreen.initTodoList();

        });
    </script> 
    

</body>

</html>

<!--===== Footer End ========-->