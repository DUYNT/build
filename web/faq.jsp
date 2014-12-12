<%-- 
    Document   : index
    Created on : Jun 9, 2014, 5:32:29 PM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>FAQ's</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
                <link href="css/css.css" rel="stylesheet" type="text/css"/>
                <script src="js/jquery.min1.83.js" type="text/javascript"></script>
		<script src="js/responsiveslides.min.js"></script>
                <script src="js/jquery.min.js" type="text/javascript"></script>
                <script src="js/incrementing.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function() {

                // Slideshow 1
                $("#slider1").responsiveSlides({
                    maxwidth: 1600,
                    speed: 600
                });
            });
        </script>
    </head>
    <body>
        <!---start-wrap---->
        <div class="wrap">
            <!---start-header---->
            <jsp:include page="templates/header.jsp"/>
            <!---End-header---->
            <!--start-image-slider---->
            <div class="image-slider">
                <!-- Slideshow 1 -->
                <ul class="rslides" id="slider1">
                    <s:iterator value="lis">
                        <li><img src="<s:property value="slide"/>"/></li>
                        </s:iterator>
                </ul>
                <!-- Slideshow 2 -->
            </div>
            <!--End-image-slider---->
            <div class="clear"> </div>	
            <!---start-content---->	
            <div class="content">
                <div class="grids">

                </div>
                <div class="clear"> </div>
                <div class="box">
                    <div class="left-box">
                        <s:iterator value="lisF">
                            <h3><s:property value="question"/></h3>
                            <div class="left-box1 frist-box">
                                <p><s:property value="respones"/></p>
                            </div>

                            <div class="clear"> </div>

                        </s:iterator>
                    </div>
                    <div class="right-box">
                        <h3>Quick</h3>
                        <s:iterator value="lisF">
                            <div class="right-box-grid" >

                                <div class="right-box-grid-info" style="width: 100%">
                                    <div class="seeall">
                                        <a href="#"><s:property value="question"/></a>
                                    </div>
                                </div>
                                <div class="clear"> </div>
                            </div>

                        </s:iterator>
                    </div>
                    <div class="clear"> </div>
                </div>
            </div>
            <!---End-content---->	
            <jsp:include page="templates/footer.jsp"/>
        </div>
        <!---End-wrap---->
    </body>
</html>
