
<%@taglib prefix="s" uri="/struts-tags" %>
<div class="header">
    <div class="logo">
        <a href="home"><img src="<s:property value="h.logo"/>" title="logo" /></a>
    </div>
    <div class="top-nav">

        <ul id="showMenu1">
                <li ><a href="home">Home</a></li>
                <li><a href="about">About</a></li>
                <s:if test="#session.name==null">
                <li ><a href="loging">Login</a></li>
                </s:if><s:else>
                <li ><a href="user">My Account</a>
                    <ul id="showMenu2" style="position: absolute; right: 405px">
                        <li><a style="padding: 10px" href="user">My Project</a></li>
                        <li><a style="padding: 10px" href="cart">Cart</a></li>
                        <!--<li><a style="padding: 10px" href="user?ID=2">Account</a></li>-->
                        <s:if test="#session.admin!=null"><li><a style="padding: 10px" href="admin">CPanel</a></li></s:if>
                        <li><a style="padding: 10px" href="Logout">Logout</a></li>
                    </ul>
                </li>
                </s:else>
                <li>
                    <a href="#">Services</a>
                     <ul id="showMenu2">
                         <s:iterator value="lisDis">
                             <li><a style="padding: 10px" href="group?IDGroup=<s:property value="id"/>"><s:property value="name"/></a></li>
                         </s:iterator>
                    </ul>
                </li>
            <li>
                <a href="totalproject">Projects</a>
                <ul id="showMenu2">
                         <s:iterator value="lisDis">
                             <li><a style="padding: 10px" href="groupSample?IDSample=<s:property value="id"/>"><s:property value="name"/></a></li>
                         </s:iterator>
                    </ul>
            </li>
            <li><a href="faqs">FAQ's</a></li>
            <li><a href="contacts">Contact</a></li>
        </ul>
       
    </div>
    
    <div class="clear"> </div>
</div>
    