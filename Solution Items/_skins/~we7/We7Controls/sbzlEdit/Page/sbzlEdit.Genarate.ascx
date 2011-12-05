﻿<!--### name="上报资料录入(自动布局)" type="system" version="1.0" created="2011/7/5 14:50:45" desc="" author="We7 Group" ###-->
<%@ Control Language="C#" AutoEventWireup="true" Inherits="We7.CMS.WebControls.AdviceEditorProviderEx" %>
    <form id="form1" runat="server">
        <asp:MultiView ID="mvAdvice" runat="server" ActiveViewIndex="0">
            <asp:View ID="viewContent" runat="server">
                <asp:PlaceHolder ID="_ID" runat="server"></asp:PlaceHolder>
                <table id="advice">
                    					                    					                    <tr>
                    <td class="lable">
                        乳品名称
                    </td>
                    <td class="content">
                        <asp:PlaceHolder ID="_rpmc" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
                                    					                    <tr>
                    <td class="lable">
                        乳品指标
                    </td>
                    <td class="content">
                        <asp:PlaceHolder ID="_rpzb" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
                                                      
                    <tr>
                        <td class="lable">
                            验证码：
                        </td>
                        <td class="content">
                            <asp:TextBox ID="txtValidate" runat="server" CssClass="required" Width="50"></asp:TextBox>
                            <img
                        id="img1" src="/Install/VerifyCode.aspx?" alt="看不清？点击更换" onclick="this.src=this.src+'?'" />
                        </td>
                    </tr>
                    <tr>
                        <td class="lable">
                        </td>
                        <td>
                            <asp:Button ID="bttnSave" runat="server" CommandName="add" Text="保存" OnClick="OnValidateSubmit"
                                CssClass="button_style" />
                            <input type="reset" value="重置" />
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="viewMessage" runat="server">
				【查询编号】：<asp:Label ID="lblSN" runat="server"></asp:Label><br />
				【密码】：<asp:Label ID="lblPwd" runat="server"></asp:Label><br />
				【新密码】：<asp:TextBox ID="txtPwd" runat="server"></asp:TextBox><br />
				<asp:Button runat="server" Text="修改" ID="bttnUpdate" /><asp:Label ID="lblMsg2" runat="server"></asp:Label><br/>
                反馈提交成功，我们会把处理信息发送到你的邮箱里。谢谢。
            </asp:View>
        </asp:MultiView>
    </form>
<script type="text/javascript">
//<![CDATA[
$(function(){$('#<%=form1.ClientID %>').validate();});//]]>
</script>