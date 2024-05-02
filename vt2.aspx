<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vt2.aspx.cs" Inherits="vt2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="barkod" HeaderText="barkod" SortExpression="barkod" />
                <asp:BoundField DataField="kitapAdi" HeaderText="kitapAdi" SortExpression="kitapAdi" />
                <asp:BoundField DataField="yazarAdi" HeaderText="yazarAdi" SortExpression="yazarAdi" />
                <asp:BoundField DataField="yayinEvi" HeaderText="yayinEvi" SortExpression="yayinEvi" />
                <asp:BoundField DataField="turu" HeaderText="turu" SortExpression="turu" />
                <asp:BoundField DataField="yil" HeaderText="yil" SortExpression="yil" />
                <asp:BoundField DataField="sayfaSayisi" HeaderText="sayfaSayisi" SortExpression="sayfaSayisi" />
                <asp:BoundField DataField="raf" HeaderText="raf" SortExpression="raf" />
                <asp:BoundField DataField="siraNo" HeaderText="siraNo" SortExpression="siraNo" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\veri.mdb" DeleteCommand="DELETE FROM `kitaplar` WHERE `id` = ?" InsertCommand="INSERT INTO `kitaplar` (`id`, `barkod`, `kitapAdi`, `yazarAdi`, `yayinEvi`, `turu`, `yil`, `sayfaSayisi`, `raf`, `siraNo`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `id`, `barkod`, `kitapAdi`, `yazarAdi`, `yayinEvi`, `turu`, `yil`, `sayfaSayisi`, `raf`, `siraNo` FROM `kitaplar`" UpdateCommand="UPDATE `kitaplar` SET `barkod` = ?, `kitapAdi` = ?, `yazarAdi` = ?, `yayinEvi` = ?, `turu` = ?, `yil` = ?, `sayfaSayisi` = ?, `raf` = ?, `siraNo` = ? WHERE `id` = ?">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="barkod" Type="String" />
                <asp:Parameter Name="kitapAdi" Type="String" />
                <asp:Parameter Name="yazarAdi" Type="String" />
                <asp:Parameter Name="yayinEvi" Type="String" />
                <asp:Parameter Name="turu" Type="String" />
                <asp:Parameter Name="yil" Type="Int32" />
                <asp:Parameter Name="sayfaSayisi" Type="Int32" />
                <asp:Parameter Name="raf" Type="String" />
                <asp:Parameter Name="siraNo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="barkod" Type="String" />
                <asp:Parameter Name="kitapAdi" Type="String" />
                <asp:Parameter Name="yazarAdi" Type="String" />
                <asp:Parameter Name="yayinEvi" Type="String" />
                <asp:Parameter Name="turu" Type="String" />
                <asp:Parameter Name="yil" Type="Int32" />
                <asp:Parameter Name="sayfaSayisi" Type="Int32" />
                <asp:Parameter Name="raf" Type="String" />
                <asp:Parameter Name="siraNo" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
