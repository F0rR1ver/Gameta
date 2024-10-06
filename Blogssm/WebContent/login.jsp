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

        <title>登录</title>
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
                            <li class="breadcrumb-item active" aria-current="page">登录</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->
        
        <!-- Login -->
        <section class="login-section pt-100 pb-180"style="background-image:url(movies/界面/3.jpg);margin-top: -10px;">
            <div class="container" style="background-color:#FCED0A;">
                <div class="register-form box-content"style="background-color:#FCED0A;">
                    <h3 class="title">登录</h3>
                    <form action="Login.do" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" id="uname" name="uname" placeholder="用户名" required>
                        </div>

                        <div class="form-group">
                            <input type="password" class="form-control" id="upass" name="upass" placeholder="密码" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="yzm" name="yzm" placeholder="验证码" required>
                            <div id="check-code" style="overflow: hidden;background: #FCED0A" class="verifyImg">
									<div  id="data_code" style="font-size: 30px;padding-left: 10px;padding-top: 8px;letter-spacing:8px;"></div>
									<input type="hidden"  id="hiddenyzm">
                        </div>
					</div>
                        
                        <div class="form-foot"> 
                            <button type="submit" class="btn default-btn"style="background-color:#F44336;">登录</button>
                            <p>没有账户? <a href="register.jsp">立即注册</a></p>
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
    
    
    <c:if test="${suc ne null and suc ne ''}">
	<script>
	  layer.msg('${suc}');
	</script>
	</c:if>
	
	
	<script type="text/javascript">
	/**
	 * 验证码
	 * @param {Object} o 验证码长度
	 */
	$.fn.code_Obj = function(o) {
		var _this = $(this);
		var options = {
			code_l: o.codeLength,//验证码长度
			codeChars: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
				'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
				'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
			],
			codeColors: ['#f44336', '#009688', '#cddc39', '#03a9f4', '#9c27b0', '#5e4444', '#9ebf9f', '#ffc8c4', '#2b4754', '#b4ced9', '#835f53', '#aa677e'],
			code_Init: function() {
				var code = "";
				var codeColor = "";
				var checkCode = _this.find("#data_code");
				for(var i = 0; i < this.code_l; i++) {
					var charNum = Math.floor(Math.random() * 52);
					code += this.codeChars[charNum];
				}
				for(var i = 0; i < this.codeColors.length; i++) {
					var charNum = Math.floor(Math.random() * 12);
					codeColor = this.codeColors[charNum];
				}
				console.log(code);
				if(checkCode) {
					checkCode.css('color', codeColor);
					checkCode.className = "code";
					checkCode.text(code);
					checkCode.attr('data-value', code.toLowerCase());
					$("#hiddenyzm").attr('value', code.toLowerCase());
					//alert($("#hiddenyzm").val());
				}
			}
		};

		options.code_Init();//初始化验证码
		_this.find("#data_code").bind('click', function() {
			options.code_Init();
		});
	};
	</script>
	<script type="text/javascript">
		/**
		 * 验证码
		 * codeLength:验证码长度
		 */
		$('#check-code').code_Obj({
			codeLength: 4
		});
	</script>
	<script type="text/javascript">
	
	function login(){
		if($("#yzm").val().toLowerCase()!=$("#hiddenyzm").val().toLowerCase()){
			layer.msg("验证码输入错误");
			return false;
		 }
	}
	
	</script>
	
    </body>
</html>