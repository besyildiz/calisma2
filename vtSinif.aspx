<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vtSinif.aspx.cs" Inherits="vtSinif" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 
       
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="barkod" HeaderText="barkod" SortExpression="barkod" />
                <asp:BoundField DataField="kitapAdi" HeaderText="kitapAdi" SortExpression="kitapAdi" />
                <asp:BoundField DataField="yazarAdi" HeaderText="yazarAdi" SortExpression="yazarAdi" />
                <asp:BoundField DataField="yayinEvi" HeaderText="yayinEvi" SortExpression="yayinEvi" />
                <asp:BoundField DataField="tur" HeaderText="tur" SortExpression="tur" />
                <asp:BoundField DataField="yil" HeaderText="yil" SortExpression="yil" />
                <asp:BoundField DataField="sayfaSayisi" HeaderText="sayfaSayisi" SortExpression="sayfaSayisi" />
                <asp:BoundField DataField="dolap" HeaderText="dolap" SortExpression="dolap" />
                <asp:BoundField DataField="raf" HeaderText="raf" SortExpression="raf" />
                <asp:BoundField DataField="sira" HeaderText="sira" SortExpression="sira" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\vt.mdb" DeleteCommand="DELETE FROM `kitaplar` WHERE `id` = ?" InsertCommand="INSERT INTO `kitaplar` (`id`, `barkod`, `kitapAdi`, `yazarAdi`, `yayinEvi`, `tur`, `yil`, `sayfaSayisi`, `dolap`, `raf`, `sira`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `id`, `barkod`, `kitapAdi`, `yazarAdi`, `yayinEvi`, `tur`, `yil`, `sayfaSayisi`, `dolap`, `raf`, `sira` FROM `kitaplar`" UpdateCommand="UPDATE `kitaplar` SET `barkod` = ?, `kitapAdi` = ?, `yazarAdi` = ?, `yayinEvi` = ?, `tur` = ?, `yil` = ?, `sayfaSayisi` = ?, `dolap` = ?, `raf` = ?, `sira` = ? WHERE `id` = ?">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="barkod" Type="String" />
                <asp:Parameter Name="kitapAdi" Type="String" />
                <asp:Parameter Name="yazarAdi" Type="String" />
                <asp:Parameter Name="yayinEvi" Type="String" />
                <asp:Parameter Name="tur" Type="String" />
                <asp:Parameter Name="yil" Type="Int32" />
                <asp:Parameter Name="sayfaSayisi" Type="Int32" />
                <asp:Parameter Name="dolap" Type="String" />
                <asp:Parameter Name="raf" Type="String" />
                <asp:Parameter Name="sira" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="barkod" Type="String" />
                <asp:Parameter Name="kitapAdi" Type="String" />
                <asp:Parameter Name="yazarAdi" Type="String" />
                <asp:Parameter Name="yayinEvi" Type="String" />
                <asp:Parameter Name="tur" Type="String" />
                <asp:Parameter Name="yil" Type="Int32" />
                <asp:Parameter Name="sayfaSayisi" Type="Int32" />
                <asp:Parameter Name="dolap" Type="String" />
                <asp:Parameter Name="raf" Type="String" />
                <asp:Parameter Name="sira" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
 
       
    
    </div>
    </form>
</body>
</html>
