<%-- 
    Document   : service
    Created on : Jun 10, 2014, 11:39:30 PM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <s:if test="#session.showService!=null">
            <title><s:property value="sv.name"/> </title>
        </s:if>
        <title>Services</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
        <link href="css/css.css" rel="stylesheet" type="text/css"  media="all" />
        <script src="jsShow/jquery.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="jsShow/likno-modal-lib.js" type="text/javascript"></script>
        <script src="jsShow/likno-modal-project.js" type="text/javascript"></script>
        <script src="js/incrementing.js"></script>
        <script src="js/responsiveslides.min.js"></script>
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

            <div class="content">
                <div class="services">
                    <div class="services">
                        <div class="service-content" >

                            <s:if test="#session.showServiceByDis!=null">
                               
                                <h3>SERVICES</h3>
                                <s:if test="listSerByIdDis.size>0">
                                    <s:iterator value="listSerByIdDis">
                                        <div class="grid_1_of_3 images_1_of_3" style="height: 265px; width: 29%">
                                            <div class="Project-gallery item-thumbnail"><a href="servicesClient?idService=<s:property value="id"/>"><img width="100%" height="150"src="<s:property value="images"/>" alt=""></a></div>
                                            <p><s:property value="name"/></p>
                                            <div class="button"><span><a href="servicesClient?idService=<s:property value="id"/>"><s:property value="price"/>$</a></span></div>
                                        </div>
                                    </s:iterator>
                                </s:if><s:else>
                                    <h2 style="font-size: 200%; color: #97B538; text-align: center">Services empty</h2>
                                </s:else>
                            </s:if>
                            <s:if test="#session.showService!=null">
                                <h4><s:property value="sv.name"/></h4>
                                <div class="contents" >
                                    <div class="image" style="float: left"><img width="300" height="250"src="<s:property value="sv.images"/>"/></div>
                                    <form action="addCart" method="post" target="cart_form"> 
                                        <div class="content-text" >
                                            
                                            <input style="display: none" type="text" name="id_user" value="<s:property value="#session.id"/>"/>
                                            <input style="display: none" type="text" name="id_service" value="<s:property value="sv.id"/>"/>
                                            <input style="display: none" type="text" name="name_service" value="<s:property value="sv.name"/>"/>
                                            <p class="ct"><s:property value="sv.content"/></p><input style="display: none" type="text" name="image_service" value="<s:property value="sv.images"/>"/>
                                            <p>Quantities : <s:property value="u.name"/><div style="position: relative; top: 20px" class="numbers-row"><input style="position: relative; top: -3px" type="text" name="partridge" id="partridge" value="1"></div></p>
                                            </br></br></br><p>Price : <span><s:property value="sv.price"/>$/<s:property value="u.name"/></span></p><input style="display: none" type="text" name="price_service" value="<s:property value="sv.price"/>"/>
                                            <p>completed in : <span><s:property value="sv.day_completion"/></span> (hours)</p><input style="display: none" type="text" name="day_service" value="<s:property value="sv.day_completion"/>"/>
                                            <p><div class="images_1_of_3">
                                                <div style="position: relative; left: -7px; top: 8px" class="contact-form">
                                                    <s:if test="sv.id_category!=0"><input type="submit" id="mybutton" value="Buy"/></s:if><s:else><span style="color: red; width: 200%">retail service are not</span></s:else>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </form>
                                    <div class="descriptions"  ><div class="left-box1"><p><s:property value="sv.descriptions"/></p></div> </div>

                                </div>

                            </div>
                        </s:if>

                        <s:if test="#session.category!=null">
                            <h3>SERVICE</h3>
                            <ul><s:if test="lisSvCa.size>0">
                                <s:iterator value="lisSvCa">
                                    <div class="grid_1_of_3 images_1_of_3">
                                        <div class="Project-gallery"><a href="servicesClient?idService=<s:property value="id"/>"><img width="100%" height="170"src="<s:property value="images"/>" alt=""></a></div>
                                        <p><s:property value="name"/></p>
                                        <div class="button"><span><a href="servicesClient?idService=<s:property value="id"/>"><s:property value="price"/>$</a></span></div>
                                    </div>
                                </s:iterator>
                            </ul>
                                </s:if>
                            <s:else><h2 style="font-size: 200%; color: #97B538; text-align: center">Services empty</h2></s:else>
                        </s:if>
                    </div>
                    <div class="services-sidebar" >
                        
                        <h3>CATEGORY</h3>
                        <ul>
                            <ul>
                                <s:iterator value="listCateForDis">
                                    <li><a href="category?ID=<s:property value="id"/>"><s:property value="name"/></a></li>
                                    </s:iterator>
                            </ul>      
                        </ul>

                    </div>

                    <div class="clear"> </div>
                </div>
            </div>
        </div>
        <!---End-content---->	
        <jsp:include page="templates/footer.jsp"/>
    </div>
    <!---End-wrap---->
</body>
</html>
<%
    session.removeAttribute("allService");
    session.removeAttribute("showService");
    session.removeAttribute("show");
    session.removeAttribute("category");
    session.removeAttribute("showServiceByDis");
    session.removeAttribute("cartError");
%>