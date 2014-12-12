<%-- 
    Document   : login
    Created on : Jul 18, 2014, 7:31:34 AM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<form action="checkLogin" method="post">
<table>
    <tr>
        <td>Email</td>
        <td><input name="email" type="text" class="textbox" value="<s:property value="#session.emaillogin"/>"></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input name="email" type="text" class="textbox" value="<s:property value="#session.emaillogin"/>"></td>
    </tr>
    <tr><td colspan="2"><span><input name="password" type="password" class="textbox" value="<s:property value="#session.password"/>"></span>
        <span style="position: relative; top: 35px; width: 150px"><input type="checkbox" name="check"/><label> remember login</label></span>
    <span style="position: absolute; top:145px; color: red"><s:property value="#session.loginError"/></span>
        </td></tr>
    <tr><td colspan="2"><span><a href="templates/register.jsp" target="register_single">Register</a><input type="submit" value="Login"/></a></span></td></tr>
</table>


</form>