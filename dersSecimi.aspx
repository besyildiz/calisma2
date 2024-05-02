<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dersSecimi.aspx.cs" Inherits="dersSecimi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Ödev için dersinizi seçin: <br />
        <asp:CheckBox Text="Matematik" ID="cbMatematik" runat="server" AutoPostBack="True" OnCheckedChanged="cbMatematik_CheckedChanged" /> <br />
         <asp:CheckBox Text="Fizik" ID="cbFizik" runat="server" AutoPostBack="true" OnCheckedChanged="cbFizik_CheckedChanged" /> <br />
         <asp:CheckBox Text="Kimya" ID="cbKimya" runat="server" AutoPostBack="True" OnCheckedChanged="cbKimya_CheckedChanged" /> <br />
         <asp:CheckBox Text="Biyoloji" ID="cbBiyoloji" runat="server" AutoPostBack="True" OnCheckedChanged="cbBiyoloji_CheckedChanged"/> <br />

 
        <br /> <asp:Literal id="ltSecilenDersler" runat="server" />
    </div>
    </form>
</body>
</html>
