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
    
    <title>后台管理</title>

</head>

<body >
 
                <div class="top-page-header">
                    <div class="page-title" style="height: 100px;text-align: center;margin-top: 50px;">
                        <h2>欢迎进入Gameta后台管理系统</h2>
                    </div>


                </div>


     <script src="<%=path %>/assets/js/global-plugins.js"></script>
     <script src="<%=path %>/assets/js/theme.js" type="text/javascript" ></script>

    <!-- For the page has tooltipslter only -->
    <script src="<%=path %>/assets/js/tooltipster.js" type="text/javascript" ></script>

    <!-- For this page only -->
    <script src="<%=path %>/assets/js/tables.js"></script>
    <script src="<%=path %>/assets/js/table_editable.js"></script>
    
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

