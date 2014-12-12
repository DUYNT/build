<%@taglib prefix="s" uri="/struts-tags"%>
<s:if test="#session.selectType==null">
    <table class="zebra">
        <tr>
            <td colspan="2">
                <form action="selectType" method="post">
                    <select name="typeService">
                        <option value="2">Normal service</option>
                        <option value="1">Optional Services</option>
                        <option value="0">Services are selected</option>
                    </select>
                    <input name="selectProject" type="text" value="2" style="display: none"/>
                    <input type="submit" value="Select"/>
                </form>
            </td>
        </tr>
        <tr>
            <td style="color: red; font-size: 15px; width: 20%">Normal service</td>
            <td>Creating services for the purpose of sale, customers will choose products and add to their shopping cart</td>
        </tr>
        <tr>
            <td style="color: red; font-size: 15px; width: 20%">Optional Services</td>
            <td>Creating this type of product prototyping purposes of the project, and this will be the required services when customers sign sample project. This product will be selected to create a sample project management</td>
        </tr>
        <tr>
            <td style="color: red; font-size: 15px; width: 20%">Services are selected</td>
            <td>This type of service for other purposes when the customer is viewing the sample project, they can choose additional services associated with this project</td>
        </tr>
    </table>
</s:if>
<s:else >
    <table class="zebra">
        <form action="addService" method="post" enctype="multipart/form-data">
            <tr style="display: none">
                <td>id</td>
                <td><input name="idSer" type="text" value="<s:property value='s.id'/>"></td>
            </tr>
            <tr>
                <td>Name *</td>
                <td><input name="name" type="text" value="<s:property value='s.name'/>"></td>
            </tr>
            <tr>
                <td>Content *</td>
                <td><input name="content" type="text" value="<s:property value='s.content'/>"></td>
            </tr>
            <tr>
                <s:if test="#session.typeService!=null">
                    <td>District</td>
                    <td>
                    <select name="id_district" >
                        <option><s:property value='s.id_category'/></option>
                        <s:iterator value="listDisTrict">
                            <option value="<s:property value="id"/>"><s:property value="name"/></option>
                        </s:iterator>
                    </select>
                </td>
                </s:if>
                <s:else>
                <td>Category*</td>
                <td>
                    <select name="id_category" >
                        <option><s:property value='s.id_category'/></option>
                        <s:iterator value="cmbCategory">
                            <option value="<s:property value="id"/>"><s:property value="name"/></option>
                        </s:iterator>
                    </select>
                </td>
                </s:else>
            </tr>
            <tr>
                <td>Price *</td>
                <td><input name="price" type="text" value="<s:property value='s.price'/>"></td>
            </tr>
            <tr>
                <td>Upload Image</td>
                <td><input name="myFile" type="file" value="<s:property value='s.images'/>"></td>
            </tr>
            <tr>
                <td>Descriptions</td>
                <td><textarea name="descriptions"  style="width: 100%; height: 300px"><s:property value='s.descriptions'/></textarea></td>
            </tr>
            <tr>
                <td>Time Expiration</td>
                <td><input type="text" name="day_completion" value="<s:property value='s.day_completion'/>"/></td>
            </tr>
            <tr>
                <td>Units</td>
                <td>
                    <select name="units">
                        <s:iterator value="cmbU">
                            <option value="<s:property value="id"/>"><s:property value="name"/></option>
                        </s:iterator>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color: red"><s:property value="#session.error"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Submit"></td>
            </tr>

        </form>
    </table>

</s:else>
