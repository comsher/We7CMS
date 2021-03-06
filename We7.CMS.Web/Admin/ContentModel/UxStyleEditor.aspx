﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UxStyleEditor.aspx.cs"
    Inherits="We7.CMS.Web.Admin.ContentModel.UxStyleEditor" ValidateRequest="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>样式编辑器</title>
    <base target="_self" />    
   <link rel="stylesheet" type="text/css" href="/admin/ajax/CodeMirror/css/docs.css"/>
    <script src="/admin/ajax/CodeMirror/js/codemirror.js" type="text/javascript"></script>
    <style type="text/css">        
        body{
            margin:0px auto;  
        }
        .CodeMirror-wrapping{
            border:1px solid #aaa;
        }  
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
   
            <tr>
                <td>
                    <asp:TextBox ID="CtrCodeTextBox" runat="server" TextMode="MultiLine" Width="700px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:Button ID="SaveButton" runat="server" Text="　　保存　　"
                                 OnClick="SaveButton_Click" OnClientClick="getCurrentValue();" />
                            </td>
                            <td>                                
                                <asp:HiddenField ID="editorValue" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="msgLabel" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>

    <script type="text/javascript">

        var editor = CodeMirror.fromTextArea('<%=CtrCodeTextBox.ClientID %>', {
            parserfile: ["parsecss.js"],
            //              stylesheet: "/admin/Ajax/CodeMirror/contrib/csharp/css/csharpcolors.css",
            stylesheet: ["/admin/Ajax/CodeMirror/css/csscolors.css"],
            path: "/admin/Ajax/CodeMirror/js/",
            height: "400px",
            width: "700px",
            indentUnit: 4,
            lineNumbers: "true"
        });
            
     function getCurrentValue() {
         document.getElementById('<%=editorValue.ClientID %>').value = editor.getCode();
     }

     function EditSuccess() {
         //parent.call back
         window.close();
     }
     <%=strScript %>
    </script>

</body>
</html>
