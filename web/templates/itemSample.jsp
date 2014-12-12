
<%@taglib prefix="s"  uri="/struts-tags"%>

<div class="services">
    <div class="service-content" >
        <h4><s:property value="samProject.name"/></h4>
        <div class="contents" >
            <div class="image" style="float: left"><img width="300" height="250"src="<s:property value="samProject.images"/>"/></div>
            <div class="content-text" style="position: relative; top: 20px">
                <ul class="mandatory">
                    <li style="padding: 4px"><a target="_blank" href="servicesClient?idService=<s:property value="samProject.id_sevice1"/>"><%=session.getAttribute("service1")%></a></br><%=session.getAttribute("price1")%>$ / <%=session.getAttribute("units1")%> / <%=session.getAttribute("hours1")%>(hours) </li>
                    <li  style="padding: 4px"><a target="_blank" href="servicesClient?idService=<s:property value="samProject.id_sevice2"/>"><%=session.getAttribute("service2")%></a></br><%=session.getAttribute("price2")%>$ / <%=session.getAttribute("units2")%> / <%=session.getAttribute("hours2")%>(hours) </li>
                </ul>

                <form name="addSelect" method="post">
                    <table>
                        <tr >
                            <td style="padding: 3px">
                                <select name="select1" style="padding: 7px; background: #323232; border: 1px solid #828282; color: white">
                                    <option value="<s:property value="#session.idService1"/>"><s:property value="#session.nameservice1"/></option>
                                    <option value="0">Remove Service</option>
                                    <s:iterator value="listPrSampleF">
                                        <option value="<s:property value="id"/>"><s:property value="name"/></option> 
                                    </s:iterator>
                                </select>
                                <input type="hidden" name="postService" value="1">
                                <div class="contact-form mandatory" style="display: inline">
                                    <s:if test="#session.nameservice1==null"><input style="padding: 5px;position: relative; top: 2px" type="submit" value="Add"/></s:if><s:else></s:else>
                                    </div>
                                <s:if test="#session.nameservice1!=null"><a class="contact-form" target="_blank" href="servicesClient?idService=<s:property value="#session.idService1"/>">info</a></</s:if>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 3px"><s:if test="#session.nameservice1!=null"><span style="color: white; font-size: 12px">+<s:if test="#session.partridge1!=0"><s:property value="#session.priceService1 * #session.partridge1"/></s:if><s:else><s:property value="#session.priceService1"/></s:else>$ / <s:if test="#session.partridge1!=0"><s:property value="#session.partridge1"/></s:if><s:property value="#session.unitsService1"/></span></s:if></td>
                            </tr>
                            <tr>
                                <td style="padding: 3px"><s:if test="#session.nameservice1!=null">
                                    <div style="position: relative; top: 3px; left: 2px; " class="numbers-row">
                                        <input style="position: relative; top: -3px; " type="text" name="partridge1" id="partridge" value="<s:if test="#session.partridge1==0">1</s:if><s:else><s:property value="#session.partridge1"/></s:else>"/>
                                    </div><span class="contact-form" style="font-size: 80%; padding-left: 10px"><input style="padding: 5px;position: relative; top: 2px" type="submit" value="Edit"/></span>
                                    </s:if>
                            </td>
                        </tr>
                            <s:if test="#session.id==null">
                        <tr>
                            <td><span style="color: red">Please login to perform this function</td>
                        </tr></s:if>
                    </table>
                </form>
                <s:if test="#session.nameservice1!=null">
                    <form name="addSelect" method="post">
                        <table>
                            <tr>
                                <td style="padding: 3px">
                                    <select name="select2" style="padding: 7px; background: #323232; border: 1px solid #828282; color: white">
                                        <option value="<s:property value="#session.idService2"/>"><s:property value="#session.nameservice2"/></option>
                                        <option value="0">Remove Service</option>
                                        <s:iterator value="listPrSampleF">
                                            <option value="<s:property value="id"/>"><s:property value="name"/></option> 
                                        </s:iterator>
                                    </select>
                                    <input type="hidden" name="postService" value="2">
                                    <div class="contact-form mandatory" style="display: inline">
                                        <s:if test="#session.nameservice2==null"><input style="padding: 5px;position: relative; top: 2px" type="submit" value="Add"/><span style="color: red;"><s:property value="#session.errorSelect"/></span></s:if><s:else></s:else>
                                        </div>
                                    <s:if test="#session.nameservice2!=null"><a target="_blank" href="servicesClient?idService=<s:property value="#session.idService2"/>">info</a></s:if>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 3px"><s:if test="#session.nameservice2!=null"><span style="color: white; font-size: 12px">+<s:if test="#session.partridge2!=0"><s:property value="#session.priceService2 * #session.partridge2"/></s:if><s:else><s:property value="#session.priceService2"/></s:else>$ / <s:if test="#session.partridge2!=0"><s:property value="#session.partridge2"/></s:if><s:property value="#session.unitsService2"/></span></s:if></td>
                                </tr>
                                <tr>
                                    <td style="padding: 3px"><s:if test="#session.nameservice2!=null">
                                        <div style="position: relative; top: 3px; left: 2px; " class="numbers-row">
                                            <input style="position: relative; top: -3px; " type="text" name="partridge2" id="partridge" value="<s:if test="#session.partridge2==0">1</s:if><s:else><s:property value="#session.partridge2"/></s:else>"/>
                                        </div><span class="contact-form" style="font-size: 80%; padding-left: 10px"><input style="padding: 5px;position: relative; top: 2px" type="submit" value="Edit"/></span>
                                        </s:if>
                                </td>
                            </tr>
                        </table>
                    </form>
                </s:if>

            </div>

            <div class="descriptions"  ><div class="left-box1" style="position: relative; right: 20px; top: -20px"><p><s:property value="samProject.contents"/></p></div> </div>

        </div>
    </div>
    <div class="right-box" style="width: 20%;">
        <h3>Price</h3>
        <div class="right-box-grid" >


            <div class="right-box-grid-info" style="width: 100%">
                <p style="font-size: 110%">Price : <span><s:property value="#session.totalPrice"/>$</span></p>
                <p style="font-size: 110%">completed in : <span><s:property value="#session.totalHours"/></span> (hours)</p>
                <jsp:include page="formSample.jsp"/>
            </div>

            <div class="clear"> </div>

        </div>
    </div>

</div>

<%
    session.removeAttribute("errorSelect");
%>