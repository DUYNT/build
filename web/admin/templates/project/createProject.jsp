<%@taglib prefix="s" uri="/struts-tags"%>

<s:if test="#session.idProjectSample!=null">
    <table class="zebra">
        <tr>
        <form action="usingDistrict" method="post">
            <td>
                <select name="dictrict">
                    <s:iterator value="lisD">
                        <option value="<s:property value="id"/>">
                            <s:property value="name"/>
                        </option>
                    </s:iterator>
                </select>
            </td>
            <td>
                <input type="submit" value="Continue"/>
            </td>
        </form>
    </tr>
</table>
</s:if>
<s:elseif test="#session.createProjec!=null">
    <form action="createSample" method="post" enctype="multipart/form-data">
    <table class="zebra">
        
        <tr>
            <td>Name</td>
            <td><input name="sub" value="1" style="display: none"><input name="name" type="text"/></td>
        </tr>
        <tr>
            <td>Image</td>
            <td><input name="myFile" type="file"/></td>
        </tr>
        <tr>
            <td>Bundled Services 1</td>
            <td><select name="service1">
                    <option id="0">Select Service</option>
                    <s:iterator value="lisSv">
                        <option value="<s:property value="id"/>"><s:property value="name"/></option>
                    </s:iterator>
                </select>
            </td>
        </tr>
        <tr>
            <td>Bundled Services 2</td>
            <td><select name="service2">
                    <option id="0">Select Service</option>
                    <s:iterator value="lisSv">
                        <option value="<s:property value="id"/>"><s:property value="name"/></option>
                    </s:iterator>
                </select>
            </td>
        </tr>
        <tr>
            <td>Content</td>
            <td><textarea style="width: 30%; height: 100px" name="content"></textarea></td>
        </tr>
        <tr>
            <td colspan="2" style="color: red"><s:property value="#session.error"/></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center"><input type="submit" value="Create Sample Project"></td>
        </tr>
        
    </table>
            </form>
</s:elseif>
<s:else>
    <div class="top-nav">
        <ul>
            <li><a href="createProject?step=1">Create</a></li>
        </ul>
    </div>
    <table class="zebra">
        <tr>
            <td>Image</td>
            <td>Name</td>
            <td>District</td>
            <td>Bundled Services 1</td>
            <td>Bundled Services 2</td>
            <td>Action</td>
        </tr>
        <s:iterator value="listSamPr">
            <tr>
                <td><img width="60" height="60" src="../<s:property value="images"/>"/></td>
                <td><s:property value="name"/></td>
                <td><s:property value="id_district"/></td>
                <td><s:property value="id_sevice1"/></td>
                <td><s:property value="id_sevice2"/></td>
                <td><a href="#">Edit</a> | <a href="deleteIdSample?idSample=<s:property value="id"/>">Delete</a></td>
            </tr>
        </s:iterator>
    </table>
</s:else>
<%
    session.removeAttribute("idProjectSample");
    session.removeAttribute("createProjec");
    session.removeAttribute("error");
%>