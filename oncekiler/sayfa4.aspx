<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sayfa4.aspx.cs" Inherits="sayfa4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox runat="server" id="tb1"/><br />
        <asp:TextBox runat="server" id="tb2"/><br />
        <asp:Button Text="Topla" id="btTopla" runat="server" OnClick="btTopla_Click" />

    </div>
    </form>
</body>
</html>
