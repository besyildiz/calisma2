<%@ Page Language="C#" AutoEventWireup="true" CodeFile="daire2.aspx.cs" Inherits="daire2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Dairenin yarıçapını giriniz:
        <asp:TextBox runat="server" id="tbYariCap"/>
       
        
 <asp:Button Text="Alanını ve çevresini Hesapla" runat="server" id="btHesapla" OnClick="btHesapla_Click" /> 
        
         <br />
        <asp:Label id="lbSonuc" ForeColor="Red" Font-Bold="true" runat="server" />
    </div>
   
    </form>
</body>
</html>
