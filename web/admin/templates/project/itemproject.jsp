<%-- 
    Document   : itemproject
    Created on : Jul 12, 2014, 5:37:53 AM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<div class="contact-form" style="background: #333">

    <div class="project" style="padding-right: 1em; padding-bottom: 2em">

        <table class="zebra">
            <tr>
                <td colspan="2">Project Information</td>
            </tr>
            <tr>
                <td>Avatar</td>
                <td><img width="100" height="100" src="../<s:property value="p.avatar"/>"/></td>
            </tr>
            <tr>
                <td>Project ID</td>
                <td><s:property value="p.id"/></td>
            </tr>
            <tr>
                <td>Time Start</td>
                <td><s:property value="p.start_time"/></td>
            </tr>
            <tr>
                <td>Name contact</td>
                <td><s:property value="#session.name"/></td>
            </tr>
            <tr>
                <td>Phone contact</td>
                <td><s:property value="p.phone"/></td>
            </tr>
            <tr>
                <td>Address Construction</td>
                <td><s:property value="p.address"/></td>
            </tr>
            <tr>
                <td>Time request</td>
                <td><s:property value="p.time_request"/></td>
            </tr>
            <tr>
                <td>Total price project</td>
                <td><s:property value="p.total_price"/>$</td>
            </tr>
        </table>
    </div>
    <div class="payment" style="padding-left: 1em">
        <table class="zebra">
            <tr>
                <td colspan="2">Payment Information</td>
            </tr>
            <tr>
                <td>Company</td>
                <td><s:property value="c.company"/></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><s:property value="c.address1"/></td>
            </tr>
            <tr>
                <td>Address 2</td>
                <td><s:property value="c.address2"/></td>
            </tr>
            <tr>
                <td>Phone contact</td>
                <td><s:property value="c.phone"/></td>
            </tr>
            <tr>
                <td>Email contact</td>
                <td><s:property value="c.email"/></td>
            </tr>
            <tr>
                <td>Monday - Friday</td>
                <td><s:property value="c.timeIn1"/> : <s:property value="c.timeOut1"/></td>
            </tr>
            </tr>
        </table>
    </div>
    <div class="status"  style="padding-left: 1em; padding-top: 2em">
        <table class="zebra">
            <tr>
                <td colspan="2">Status Project</td>
            </tr>
            <tr>
                <td>
                    <s:if test="listSvByProject.size()>0">
                        <form action="status" method="post">
                            <select name="statusedit">

                                <option>
                                    <s:if test="p.startus==1">
                                        Up-Coming 
                                    </s:if><s:elseif test="p.startus==2">
                                        On-Going
                                    </s:elseif><s:elseif test="p.startus==3">
                                        Accomplished 
                                    </s:elseif><s:else>
                                        Abortive
                                    </s:else>
                                </option>
                                <option value="1">Up-Coming</option>
                                <option value="2">On-Going</option>
                                <option value="3">Accomplished</option>
                                <option value="4">Abortive</option>
                            </select>
                            <input style="display: none" value="<s:property value="#session.idProjectShow"/>" name="projectID"/>
                            <input type="submit" value="Update"/>
                        </form>
                    </s:if><s:else>
                        <span style="background: red; color: white;">Abortive <a href="deleteProject?idProject=<s:property value="p.id"/>"><img src="images/delete_icon.gif" alt=""></a></span>
                            </s:else>
                </td>
            </tr>
        </table>
    </div>
    <div class="service">
        <table class="zebra">
            <tr>
                <td colspan="2" style="width: 80%">Name</td>
                <td style="width: 5%">Price</td>
                <td colspan="2" style="width: 5%">Completed</td>
            </tr>
            <s:if test="listSvByProject.size()>0">
                <s:iterator value="listSvByProject">
                    <tr style="height: 50px" >
                        <td colspan="2"><s:property value="name_service"/></td>
                        <td><s:property value="price_service"/>$</td>
                        <td colspan="2"><s:property value="hour_service"/> (hours)</td>
                    </tr>
                </s:iterator>
            </s:if><s:else>
                <tr  style="height: 50px"><td colspan="5">Cart Empty</td></tr>
            </s:else>
            <tr style="height: 50px">
                <td colspan="2" style="text-align: right">Total :  </td>
                <td><s:property value="p.total_price"/>$</td>
                <td colspan="2"><s:property value="totalHour"/>(hours)</td>

            </tr>
            <tr>


        </table>
    </div>
    <div class="service">
        <s:if test="#session.id!=null">

            <table class="zebra">
                <s:iterator value="lisComProject">
                    <tr>
                        <td><span style="color: chartreuse"><s:property value="name"/> : <s:property value="time_content"/></span><s:property value="content"/></td>
                    </tr>
                </s:iterator>
                <form action="conmentProjectAdmin" method="post">
                    <tr>
                        <td><textarea style="width: 80%; height: 40px" name="content"></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Comment"/></td>
                    </tr>
                    <tr>
                        <td><s:property value="#session.content"/></td>
                    </tr>
                </form>
            </table>

        </s:if>
    </div>
