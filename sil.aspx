<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sil.aspx.cs" Inherits="sil" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1"   >
        </asp:GridView>
    
     
    
    
     
    
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
    
     
    
    
     
    
    </form>
</body>
</html>
