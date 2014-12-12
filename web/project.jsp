<%-- 
    Document   : gallery
    Created on : Jun 10, 2014, 11:38:53 PM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Project</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
                <link href="css/css.css" rel="stylesheet" type="text/css"/>
                <script src="js/jquery.min1.83.js" type="text/javascript"></script>
		<script src="js/responsiveslides.min.js"></script>
                <script src="js/jquery.min.js" type="text/javascript"></script>
                <script src="js/incrementing.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
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
                                    <s:if test="#session.itempsample==null">
                                      <s:iterator value="lis">
                                          <li><img src="<s:property value="slide"/>"/></li>
                                      </s:iterator>
				  </ul>
                                    </s:if>
			</div>
		<!--End-image-slider---->
	<div class="clear"> </div>	
	<!---start-content---->	
	<div class="content">
            <s:if test="#session.showSample!=null">
                <div class="gallery">
                <div class="section group">
                            <s:iterator value="listPrSample">
						<div class="grid_1_of_3 images_1_of_3">
                                                    <div class="Project-gallery"><a href="<s:property value="images"/>"><img width="100%" height="180px" src="<s:property value="images"/>" alt=""></a></div>
                                                    <p><s:property value="name" /></p>
                                                    <div class="button"><span><a href="itempSample?IDProject=<s:property value="id"/>">Read More</a></span></div>
						</div>
						</s:iterator>
						</div>
                    </div>
            </s:if>
            <s:elseif test="#session.itempsample!=null">
                <jsp:include page="templates/itemSample.jsp"/>
            </s:elseif>
            <s:elseif test="#session.getItempProject!=null">
                <jsp:include page="templates/showItempProject.jsp"/>
            </s:elseif>
            <s:else>
		<div class="gallery">
                    <h4>Accomplished</h4>
                    <div class="section group">
                            <s:iterator value="list3TopProAc">
						<div class="grid_1_of_3 images_1_of_3">
                                                    <div class="Project-gallery"><a href="projectItemp?idShowProject=<s:property value="id"/>"><img width="100%" height="180px" src="<s:property value="avatar"/>" alt=""></a></div>
                                                    <p><s:property value="address" /></p>
                                                    <div class="button"><span><a href="projectItemp?idShowProject=<s:property value="id"/>">Read More</a></span></div>
						</div>
						</s:iterator>
						</div>
                    <h4>On-Going</h4>
                    <div class="section group">
                            <s:iterator value="list3TopProOn">
						<div class="grid_1_of_3 images_1_of_3">
                                                    <div class="Project-gallery"><a href="projectItemp?idShowProject=<s:property value="id"/>"><img width="100%" height="180px" src="<s:property value="avatar"/>" alt=""></a></div>
                                                    <p><s:property value="address" /></p>
						     <div class="button"><span><a href="projectItemp?idShowProject=<s:property value="id"/>">Read More</a></span></div>
						</div>
						</s:iterator>
                        
						</div>
                    <h4>Up-Coming</h4>
			<div class="section group">
                            <s:iterator value="list3TopProUp">
						<div class="grid_1_of_3 images_1_of_3">
                                                    <div class="Project-gallery"><a href="projectItemp?idShowProject=<s:property value="id"/>"><img width="100%" height="180px" src="<s:property value="avatar"/>" alt=""></a></div>
                                                    <p><s:property value="address" /></p>
						     <div class="button"><span><a href="projectItemp?idShowProject=<s:property value="id"/>">Read More</a></span></div>
						</div>
						</s:iterator>
                            
						</div>
						
						<div class="projects-bottom-paination">
						<ul>
							<li class="corrent"><a href="#">1</a></li>
                                                        <li><a href="#">2</a></li>
						</ul>
					</div>
					 <script type="text/javascript" src="js/jquery.lightbox.js"></script>
	    <link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen" />
	  	<script type="text/javascript">
	    $(function() {
	        $('.Project-gallery a').lightBox();
	    });
	    </script>
		</div>
            </s:else>
	</div>
	<!---End-content---->	
	<jsp:include page="templates/footer.jsp"/>
	</div>
	<!---End-wrap---->
	</body>
</html>
<%
    session.removeAttribute("showSample");
    session.removeAttribute("itempsample");
    session.removeAttribute("getItempProject");
%>