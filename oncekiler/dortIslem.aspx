<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dortIslem.aspx.cs" Inherits="dortIslem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sayı 1:  
            <asp:TextBox runat="server" ID="tb1" Width="60" />
            <br />
            Sayı 2:  
            <asp:TextBox runat="server" ID="tb2" Width="60" />
            <br />
            <asp:Label ID="lbSonuc" runat="server" /><br />
            <asp:Button Text="+" ID="btTopla" runat="server" OnClick="btTopla_Click" />
            <asp:Button Text="-" ID="btCikart" runat="server" OnClick="btCikart_Click" />
            <asp:Button Text="*" ID="btCarp" runat="server" OnClick="Carp_Click" />
            <asp:Button Text="/" ID="btBol" runat="server" OnClick="btBol_Click" />


        </div>
    </form>
</body>
</html>
