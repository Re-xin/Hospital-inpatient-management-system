<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>
        在线预约挂号
    </title>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <script src="./js/hm.js"></script>
    <script type="text/javascript" src="./js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="./js/jquery.smooth-scroll.min.js"></script>
    <script type="text/javascript" src="./js/unslider.min.js"></script>
    <script type="text/javascript" src="./js/utility.js"></script>
    <link rel="stylesheet" media="screen" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script type="text/javascript">
        function onSearchSubmit() {
            var txtKey = $("#txtKey").val();
            window.location.href = "" + txtKey;
        }

        function nameonFocus(name, id) {
            var x = document.getElementById(id);
            if (x.value == name) {
                x.value = '';
                x.style.textAlign = 'left';
                x.style.color = '#666';
            }

        }

        function nameonFocusout(name, id) {
            var x = document.getElementById(id);
            if (x.value == '') {
                x.value = name;
                x.style.textAlign = 'left';
                x.style.color = '#aaa';
            }

        }

        function nameonBlur(name, id) {
            var x = document.getElementById(id);
            if (x.value == '') {
                x.value = name;
                x.style.textAlign = 'left';
                x.style.color = '#666';
            }
        }
    </script>
    <script>
        $(function () {
            if (${loginDoctor == null }){
                $("#login").css("display","block");
            }else {
                $("#welcome").css("display","block");
            }

        })
    </script>
</head>
<body>
<div id="top">
    <div class="content" >
        <img src="imgs/logo.png" height="150px" width="560px">
        <div class="right">
            <div class="links" id="login" style="display: none">
                　<a href="login.jsp">登入</a>
                　<a href="/doctorregister.jsp">注册</a>
            </div>
            <div class="links" id="welcome" style="display: none">
                欢迎您${loginDoctor.name}医生&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/loginOutServlet">退出</a>
            </div>
            <div id="search">
                <form method="post"  id="ctl00">
                    <input id="txtKey" name="q" class="input" type="text"  maxlength="15"
                           onfocus="formValue.cd(this)" onblur="formValue.rd(this)">
                    <input class="go" type="submit" value="">
                </form>
            </div>
        </div>
    </div>
</div>

<div id="menu">
    <div id="nav" role="navigation">
        <ul>

            <li>
                <a href="">网站首页</a>
            </li>

            <li class="has-sub">
                <a href="">就医入口</a>
                <ul>
                    <li>
                        <a href="">预约挂号</a>
                    </li>
                    <li>
                        <a href="">健康管理中心</a>
                    </li>
                    <li>
                        <a href="" >医疗文书校验服务</a>
                    </li>
                    <li>
                        <a href="">导医信息</a>
                    </li>
                    <li>
                        <a href="" >专家门诊</a>
                    </li>
                    <li>
                        <a href="" >普通及专病门诊 </a>
                    </li>
                    <li>
                        <a href="" >门诊出停诊信息查询 </a>
                    </li>
                    <li>
                        <a href="">交通指南</a>
                    </li>
                </ul>
            </li>

            <li class="has-sub">
                <a href="">学科及专家</a>
                <ul>
                    <li>
                        <a href="">学科及专家介绍</a>
                    </li>
                </ul>
            </li>

            <li class="has-sub">
                <a href="">科学研究</a>
                <ul>
                    <li>
                        <a href="">科研处</a>
                    </li>
                    <li>
                        <a href="">科研信息</a>
                    </li>
                    <li>
                        <a href="">临床医学研究院</a>
                    </li>
                    <li>
                        <a href="" >临床医学杂志编辑部</a>
                    </li>
                </ul>
            </li>

            <li class="has-sub">
                <a href="">医学教育</a>
                <ul>
                    <li>
                        <a href="" >教育处首页</a>
                    </li>
                    <li>
                        <a href="" >本科生教育</a>
                    </li>
                    <li>
                        <a href="" >研究生教育</a>
                    </li>
                    <li>
                        <a href="" >住院医生培养</a>
                    </li>
                    <li>
                        <a href="" >专科医生培养</a>
                    </li>
                    <li>
                        <a href="" >进修教育</a>
                    </li>
                    <li>
                        <a href="" >继续医学教育</a>
                    </li>
                    <li>
                        <a href="" >远程医学</a>
                    </li>
                    <li>
                        <a href="" >教学学术会议</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="">人才招聘</a>
            </li>

            <li class="has-sub">
                <a href="">医院信息</a>
                <ul>
                    <li>
                        <a href="">办公管理平台</a>
                    </li>
                    <li>
                        <a href="">新OA系统</a>
                    </li>
                    <li>
                        <a href="" >闽江医院报</a>
                    </li>
                    <li>
                        <a href="">院史考据</a>
                    </li>
                    <li>
                        <a href="">医院手机App(安卓版)</a>
                    </li>
                    <li>
                        <a href="">医院手机App下载</a>
                    </li>
                    <li>
                        <a href="">媒体视点</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>


<div id="sub-head">
    <div class="sub-title unselectable">
        学科及专家
    </div>
</div>

<div id="navbar">
    <div class="content unselectable">
        <div class="first">医院</div>
        <div><a href="./index.jsp" title="网站首页">网站首页</a></div>
        <div><a href="register.jsp" title="预约挂号">预约挂号</a></div>

    </div>
</div>

<div class="content unselectable">

    <div style="height:30px"></div>

    <div id="search-doctor">
        <div class="left"><img src="${pageContext.request.contextPath }/imgs/icon_doctor.png"></div>
        <div class="left">
            <div class="title">为您服务</div>
            <br>
            <br>
            <div class="form">
                <form method="post" action="" >

                    <input id="txtKey2" type="text" name="q" placeholder="请输入要寻找的科目">

                    <input type="submit" name="btnSearch" value="搜索" id="btnSearch">

                </form>
            </div>
        </div>
    </div>

    <div class="clear" style="height:30px"></div>
    <div class="title" style="margin-left:10px">有如下可以挂号的科目</div>
    <div style="height:30px"></div>

    <!-- Indicates caution should be taken with this action -->
    <div>
        <button type="button" class="btn btn-info" >肝肿瘤内科</button>
        <button type="button" class="btn btn-info" >肝肿瘤外科</button>
        <button type="button" class="btn btn-info" >心内科</button>
        <button type="button" class="btn btn-info" >心外科</button>
        <button type="button" class="btn btn-info" >普外科</button>
        <button type="button" class="btn btn-info" >呼吸科</button>
        <button type="button" class="btn btn-info" >血管内科</button>
        <button type="button" class="btn btn-info" >血管外科</button>
        <button type="button" class="btn btn-info" >内分泌科</button>
        <button type="button" class="btn btn-info" >消化科</button>
        <button type="button" class="btn btn-info" >老年病科</button>
        <button type="button" class="btn btn-info" >骨科</button>
        <div class="clear" style="height:30px"></div>


        <button type="button" class="btn btn-primary" >泌尿外科</button>
        <button type="button" class="btn btn-primary" >肾内科</button>
        <button type="button" class="btn btn-primary" >神经外科</button>
        <button type="button" class="btn btn-primary" >神经内科</button>
        <button type="button" class="btn btn-primary" >急诊科</button>
        <button type="button" class="btn btn-primary" >心理医学科</button>
        <button type="button" class="btn btn-primary" >妇产科</button>
        <button type="button" class="btn btn-primary" >全科医学科</button>
        <button type="button" class="btn btn-primary" >胸外科</button>
        <button type="button" class="btn btn-primary" >内窥镜中心</button>
        <button type="button" class="btn btn-primary" >超声科</button>
        <div class="clear" style="height:30px"></div>


        <button type="button" class="btn btn-info" >康复医学科</button>
        <button type="button" class="btn btn-info" >核医学科</button>
        <button type="button" class="btn btn-info" >口腔科</button>
        <button type="button" class="btn btn-info" >麻醉科</button>
        <button type="button" class="btn btn-info" >血液科</button>
        <button type="button" class="btn btn-info" >放射治疗科</button>
        <button type="button" class="btn btn-info" >眼科</button>
        <button type="button" class="btn btn-info" >整形外科</button>
        <button type="button" class="btn btn-info" >皮肤科</button>
        <button type="button" class="btn btn-info" >高压氧治疗室</button>
        <button type="button" class="btn btn-info" >耳鼻喉科</button>
        <div class="clear" style="height:30px"></div>


        <button type="button" class="btn btn-primary" >病理科</button>
        <button type="button" class="btn btn-primary" >检验科</button>
        <button type="button" class="btn btn-primary" >药剂科</button>
        <button type="button" class="btn btn-primary" >心脏超声诊断科</button>
        <button type="button" class="btn btn-primary" >介入治疗科</button>
        <button type="button" class="btn btn-primary" >输血科</button>
        <button type="button" class="btn btn-primary" >放射诊断科</button>
        <button type="button" class="btn btn-primary" >急诊科（护理）</button>
        <button type="button" class="btn btn-primary" >营养科</button>
        <button type="button" class="btn btn-primary" >风湿免疫科</button>
        <div class="clear" style="height:30px"></div>


        <button type="button" class="btn btn-info" >胰腺肿瘤外科</button>
        <button type="button" class="btn btn-info" >感染管理科</button>
        <button type="button" class="btn btn-info" >循证医学中心</button>
        <button type="button" class="btn btn-info" >心电图室</button>
        <button type="button" class="btn btn-info" >实验研究中心</button>
        <button type="button" class="btn btn-info" >重症医学科</button>
        <button type="button" class="btn btn-info" >护理部</button>
        <button type="button" class="btn btn-info" >肝研所实验室</button>
        <button type="button" class="btn btn-info" >感染病科</button>
        <div class="clear" style="height:30px"></div>


        <button type="button" class="btn btn-primary" >心研所实验室</button>
        <button type="button" class="btn btn-primary" >外科日间病房</button>
        <button type="button" class="btn btn-primary" >生殖医学中心</button>



    </div>



    <div class="clear" style="height:80px"></div>

</div>

<div class="alert alert-warning alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" >
        <span>&times;</span>
    </button>
    <strong>${register}</strong>
</div>
<div>
    <form action="/registerServlet" method="post" class="form-inline">
        <div class="form-group">
            <label>名字</label>
            <input type="text" class="form-control" required id="name" name="name" placeholder="名字">
        </div>
        <div class="clear" style="height:30px"></div>
        <div class="form-group">
            <label>性别</label>
            <input type="text" class="form-control" required id="sex" name="sex" placeholder="性别">
        </div>
        <div class="clear" style="height:30px"></div>
        <div class="form-group">
            <label>年龄</label>
            <input type="text" class="form-control" required  id="age" name="age" placeholder="年龄">
        </div>
        <div class="clear" style="height:30px"></div>
        <div class="form-group" style="margin-left: -30px">
            <label>电话号码</label>
            <input type="text" class="form-control" required  id="del" name="del" placeholder="电话号码">
        </div>
        <div class="clear" style="height:30px"></div>
        <div class="form-group" style="margin-left: -30px">
            <label>临床科室</label>
            <input type="text" class="form-control" required  id="department" name="department" placeholder="临床科室">
        </div>
        <div class="clear" style="height:30px"></div>

        <br>
        <br>
        <button type="submit" class="btn btn-success">挂号</button>
    </form>
    <div class="clear" style="height:80px"></div>
    <div class="clear" style="height:80px"></div>
</div>



<div id="footer" style="height:225px;">
    <div class="content unselectable">
        <div class="left" style="width:390px">
            <table>
                <tbody>
                <tr>
                    <td colspan="2" height="10"></td>
                </tr>
                <tr>
                    <td width="60"><img src="./imgs/logo_bottom.png"></td>
                    <td>
                        <div>
                            <small>&#169; 2019  闽江学院</small>
                        </div>
                        <div style="height:5px"></div>
                        <div><a href="" target="_blank">人大代表信箱</a>　|　<a
                                href="">行风监督信箱</a></div>
                    </td>
                    <td width="80">
                        <div style="width:80px;height:60px;margin-top:-20px;">
            <span id="aaaa"><a
                    href=""
                    target="_blank">
              <img id="imgConac" vspace="0" hspace="0" border="0" src="./imgs/blue.png" data-bd-imgshare-binded="1"></a>
            </span></div>
                    </td>
                </tr>
                </tbody>
            </table>
            <div style="height:10px"></div>
            <div>
                <small>地址：福建省福州市闽侯县上街镇溪源宫路200号　|　邮编：350108</small>
            </div>
            <div>
                <small>电话：233-3333333333</small>
            </div>
            <div>
                <small>3177102146   陈智彬</small>
            </div>
            <div>
                <small><a href="" >闽ICP备05005466号 </a>　
                    <a ><img src="./imgs/ba.png"> 闽公网安备 35012102500037号 </a></small>
            </div>
        </div>
        <div class="right">
            <div>
                <div><b>友情链接</b></div>
                <div><a href="" >闽江学院主站</a></div>
                <div><a href="" >闽江学院高考分数线_招生信息</a></div>

                <div><a href="" >闽江学院教务管理系统</a></div>
                <div><a href="" >闽江学院招生办</a></div>
                <div><a href="" >闽江学院图书馆</a></div>
            </div>
            <div>
                <div><b>&nbsp;</b></div>
                <div><a href="">福建省立医院</a></div>
                <div><a href="">福建医科大学第一附属医院</a></div>
                <div><a href="">福建协和医院</a></div>
                <div><a href="">福建中医药大学附属人民医院</a></div>
            </div>
        </div>
    </div>
</div>


</body>
</html>