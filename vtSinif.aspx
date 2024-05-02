<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vtSinif.aspx.cs" Inherits="vtSinif" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 
       
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" PageSize="5" AllowPaging="True" AllowSorting="True" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
             
                <asp:CommandField  ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />

                <asp:BoundField DataField="barkod" HeaderText="Barkod" SortExpression="barkod" />
                <asp:BoundField DataField="kitapAdi" HeaderText="Kitap Adı" SortExpression="kitapAdi" />
                <asp:BoundField DataField="yazarAdi" HeaderText="Yazar Adı" SortExpression="yazarAdi" />
                <asp:BoundField DataField="yayinEvi" HeaderText="Yayın Evi" SortExpression="yayinEvi" />
                <asp:BoundField DataField="tur" HeaderText="Tür" SortExpression="tur" />
                <asp:BoundField DataField="yil" HeaderText="Yıl" SortExpression="yil" />
                <asp:BoundField DataField="sayfaSayisi" HeaderText="S. Sayısı" SortExpression="sayfaSayisi" />
                <asp:BoundField DataField="dolap" HeaderText="Dolap" SortExpression="dolap" />
                <asp:BoundField DataField="raf" HeaderText="Raf" SortExpression="raf" />
                <asp:BoundField DataField="sira" HeaderText="Sıra" SortExpression="sira" />
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
 
       
    
       
       
    
        <asp:TextBox ID="TextBox1" runat="server"  ></asp:TextBox>
 
       
        <asp:TextBox ID="TextBox2" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server"  ></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server"  ></asp:TextBox>
    
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
       
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dalTableAdapters.kitaplarTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="barkod" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="kitapAdi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="yazarAdi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="yayinEvi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="tur" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="yil" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox7" Name="sayfaSayisi" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox8" Name="dolap" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox9" Name="raf" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox10" Name="sira" PropertyName="Text" Type="String" />
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
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
        
    </form>
</body>
</html>
