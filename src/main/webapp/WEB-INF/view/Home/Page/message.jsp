<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<rapid:override name="header-style">
    <style>
        .entry-title {
            background: #f8f8f8;
        }
    </style>
    <link rel="stylesheet" href="/plugin/layui/css/layui.css">
</rapid:override>


<rapid:override name="breadcrumb">
    <%--面包屑导航 start--%>
    <nav class="breadcrumb">
        <a class="crumbs" href="/">
            <i class="fa fa-home"></i>首页
        </a>
        <i class="fa fa-angle-right"></i>
        留言板
        <i class="fa fa-angle-right"></i>
        正文
    </nav>
    <%--面包屑导航 end--%>
</rapid:override>


<rapid:override name="left">
    <%--博客主体-左侧文章正文 start--%>
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
            <article class="post" style="min-height: 500px;">
                <header class="entry-header">
                    <h1 class="entry-title">
                           留言板
                    </h1>
                </header><!-- .entry-header -->
                <div class="entry-content">
                    <%--<div class="single-content">
                        <!--PC版-->
                        <div id="SOHUCS" sid="message"></div>
                        <script charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/changyan.js" ></script>
                        <script type="text/javascript">
                            window.changyan.api.config({
                                appid: 'cytcdBHan',
                                conf: 'prod_acc9eafcae7c468c116f87dfb853e677'
                            });
                        </script>
                    </div>--%>
                    <div class="single-content" id="postContentDiv">
                        <p><strong>收藏语录</strong></p>
                        <ul>
                            <li>务实 言行相应 不怀自大；有恒 有所作为 而不终舍</li>
                            <li>幸勿苟且小就，自限其成。 ——贺长龄对左宗棠</li>
                            <li>天下断无易处之境遇，人间哪得空闲之光阴。——曾国藩</li>
                            <li><span class="st">No matter which one is your choice, please remember, stick to it and take the consequences.</span></li>
                            <li>If you don't succeed ,try ,try ,try again.</li>
                        </ul>
                        <p>&nbsp; &nbsp;</p>

                    </div>
                    <br><br>

                    <footer class="single-footer">
                        <ul class="single-meta">
                            <li class="r-hide">
                                <a href="javascript:pr()" title="侧边栏">
                                    <i class="fa fa-caret-left"></i>
                                    <i class="fa fa-caret-right"></i>
                                </a>
                            </li>
                        </ul>
                        <ul id="fontsize">
                            <li>A+</li>
                        </ul>
                    </footer><!-- .entry-footer -->


                    <div class="clear"></div>
                </div><!-- .entry-content -->
            </article><!-- #post -->



        </main>
        <!-- .site-main -->
    </div>
    <%--博客主体-左侧文章正文end--%>
</rapid:override>


<%--侧边栏 start--%>
<rapid:override name="right">
    <%@include file="../Public/part/sidebar-3.jsp" %>
</rapid:override>
<%--侧边栏 end--%>

<rapid:override name="footer-script">
    <script>
        //添加用户验证和编辑用户验证
        layui.use(['form', 'layedit', 'laydate'], function () {
            var form = layui.form, layer = layui.layer;
            form.verify({

                userName: function (value) {
                    if (value.length > 12 || value.length < 4) {
                        return "用户名必须4到12位";
                    }
                    if(checkUserName()==1) {
                        return "用户名已存在";
                    }
                },
                userEmail: function () {
                    if(checkUserEmail()==1) {
                        return "电子邮箱已存在";
                    }
                }

            });

            form.on('submit(demo1)', function (data) {
                return true;
            });
        });
    </script>
</rapid:override>

<%@ include file="../Public/framework.jsp" %>