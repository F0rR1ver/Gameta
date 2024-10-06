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
    <title>登录</title>

    <link href="<%=path %>/assets/css/global-plugins.css" rel="stylesheet">
    <link href="<%=path %>/assets/vendors/jquery-icheck/skins/all.css" rel="stylesheet" />
    <link href="<%=path %>/assets/css/theme.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/style-responsive.css" rel="stylesheet"/>
    <link href="<%=path %>/assets/css/class-helpers.css" rel="stylesheet"/>
    <link href="<%=path %>/assets/css/colors/green.css" rel="stylesheet">
    <link href="<%=path %>/assets/fonts/Indie-Flower/indie-flower.css" rel="stylesheet" />
    <link href="<%=path %>/assets/fonts/Open-Sans/open-sans.css?family=Open+Sans:300,400,700" rel="stylesheet" />
    <script type="text/javascript" src="<%=path %>/layer/jquery-2.0.3.min.js"></script>
	<script type="text/javascript" src="<%=path %>/layer/layer.js"></script>

</head>
<body id="default-scheme" class="form-background">

    <!--main content start-->
    <div class="bg-overlay"></div>
    <section class="registration-login-wrapper">

        <!--======== START LOGIN ========-->
        <div class="row page-login">

            <div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2" style="margin-left: 450px;"> 

                <div class="form-body bg-white padding-20" style="width: 600px;">
                    <div class="row">
                        <div class="col-md-8" style="margin-left: 80px;">

                            <div class="form-header bg-white padding-10 text-center">
                                <h2><strong>登录</strong></h2>
                                 <!-- <p> <a href="#" class="color-green">点击注册</a> </p>  -->                
                            </div>

                            <form  action="<%=path %>/admin/login.do" method="post"  onsubmit="return login()" >
                                <div class="inner-addon right-addon margin-bottom-15">
                                    <i class="fa fa-user"></i>
                                    <input type="text" class="form-control" name="username" placeholder="用户名" required/>
                                </div>

                                <div class="inner-addon right-addon margin-bottom-15">
                                    <i class="fa fa-lock"></i>
                                    <input type="password" class="form-control" name="userpwd" placeholder="密码" required/>
                                </div>
                                
                                <div class="inner-addon right-addon margin-bottom-15">
                                    <input type="text" class="form-control" name="yzm" id="yzm" placeholder="验证码" required/>
                                    <div id="check-code" style="overflow: hidden;background: white" class="verifyImg">
									<div class="code" id="data_code" style="font-size: 30px;padding-left: 10px;padding-top: 8px;letter-spacing:8px"></div>
									<input type="hidden"  id="hiddenyzm">
						    	</div>
                                </div>
                                
                                
                                <div class="row">
                                    <!-- <div class="col-md-6 text-center">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" class="icheck-aero"> Remember me
                                            </label>
                                        </div>
                                    </div> -->
                                    <div class="col-md-6">
                                        <button type="submit" class="btn btn-green btn-raised btn-flat">登录</button>
                                    </div>
                                </div>
                                
                            </form>

                        </div>
                    </div>
                    <!--/row-->    

                    <hr/>
                     <div class="row">
                        <div class="col-md-12 text-center">
                           <!--  <h4>忘记密码?</h4> -->
                            <p><a href="#"></a></p>
                        </div>
                    </div> 

                </div><!--/form-body-->
                
            </div><!--/col-md-12-->

        </div><!--/row-->
        <!--======== END LOGIN ========-->

    </section>
    <script src="<%=path %>/assets/js/theme.js" type="text/javascript" ></script>

    <!-- For Form Elements Page Only -->
    <script src="<%=path %>/assets/js/forms.js"></script>
    <script src="<%=path %>/assets/js/form-validation.js"></script>
    <script src="<%=path %>/assets/js/form-wizard.js"></script>
    <script src="<%=path %>/assets/js/form-plupload.js"></script>
    <script src="<%=path %>/assets/js/form-x-editable.js"></script>

    <!-- For Login and registration page Only -->
    <script src="<%=path %>/assets/vendors/backstretch/jquery.backstretch.min.js"></script>
    <script src="<%=path %>/assets/js/registration-login.js"></script>



</body>



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


	<script type="text/javascript">
    <%String suc= (String)request.getAttribute("suc");
    if(suc!=null){%>
    	layer.msg('<%=suc %>');   
    <%}%>
    </script>

</html>

<!--===== Footer End ========-->