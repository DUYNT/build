<%-- 
    Document   : formSample
    Created on : Jul 16, 2014, 10:54:37 PM
    Author     : Windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="#session.id!=null">
    <s:if test="listCart2.size()==0">
        <form action="addSelect1" method="post">
            <input type="hidden" name="create" value="1"/>
            <input type="hidden" name="avatarPost" value="1"/>

            <input type="hidden" name="id_user" value="<s:property value="#session.id"/>"/>
            <input type="hidden" name="id1" value="<s:property value="#session.IdService1"/>"/>
            <input type="hidden" name="price1" value="<s:property value="#session.price1"/>"/>
            <input type="hidden" name="hours1" value="<s:property value="#session.hours1"/>"/>
            <input type="hidden" name="name1" value="<s:property value="#session.service1"/>"/>

            <input type="hidden" name="id2" value="<s:property value="#session.IdService2"/>"/>
            <input type="hidden" name="price2" value="<s:property value="#session.price2"/>"/>
            <input type="hidden" name="hours2" value="<s:property value="#session.hours2"/>"/>
            <input type="hidden" name="name2" value="<s:property value="#session.service2"/>"/>

            <input type="hidden" name="id3" value="<s:property value="#session.idService1"/>"/>
            <input type="hidden" name="price3" value="<s:property value="#session.priceService1"/>"/>
            <input type="hidden" name="hours3" value="<s:property value="#session.hoursService1"/>"/>
            <input type="hidden" name="name3" value="<s:property value="#session.nameservice1"/>"/>

            <input type="hidden" name="id4" value="<s:property value="#session.idService2"/>"/>
            <input type="hidden" name="price4" value="<s:property value="#session.priceService2"/>"/>
            <input type="hidden" name="hours4" value="<s:property value="#session.hoursService2"/>"/>
            <input type="hidden" name="name4" value="<s:property value="#session.nameservice2"/>"/>


            <div class="images_1_of_3">
                <div style="position: relative; left: -7px; top: 8px" class="contact-form">
                    <input type="submit" id="mybutton" value="Project Requirements"/>   
                </div>
            </div>
        </form>
    </s:if>

    <s:else>
        <div class="images_1_of_3">
            <div style="position: relative; left: -7px; top: 8px" class="contact-form">
                <form action="addSelect1" method="post">
                    <input type="hidden" name="id_user" value="1"/>
                    <input type="submit" value="Views">
                </form>
                <span style="color: red; font-size: 12px; width: 200px">You have project not complete</span>
            </div>
        </div>
    </s:else>

</s:if>
<s:else>
    <div style="position: relative; left: -7px; top: 8px" class="contact-form">
        <form action="loging" method="post">
            <input type="hidden" name="procc" value="1"/><input type="submit" id="mybutton" value="Project Requirements"/>
        </form>
    </div>
</s:else>