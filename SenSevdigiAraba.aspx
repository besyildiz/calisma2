<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SenSevdigiAraba.aspx.cs" Inherits="SenSevdigiAraba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Aşağıdaki takımlardan favorini seç:<br />
        <asp:RadioButton Text="Mercedes" runat="server" ID="rdMercedes" GroupName="f1"/><br />
        <asp:RadioButton Text="Aston Martin" runat="server" id="rdAston" GroupName="f1"/><br />
        <asp:RadioButton Text="Mclaren" runat="server" id="rdMclaren" GroupName="f1"/><br />
        <asp:RadioButton Text="Ferrari" runat="server" id="rdFerrari" GroupName="f1"/><br />
        <asp:RadioButton Text="Redbull" runat="server" id="rdRedbull" GroupName="f1"/><br />
        <asp:Button Text="Seç" ID="btSec" runat="server" OnClick="btSec_Click" />
    </div> <asp:Label id="lbSecilen" runat="server" />
    </form>
</body>
</html>
