<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kitapKayit.aspx.cs" Inherits="kitapKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <style>
        td {
            height: 30px;
        }
    </style>

     <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="tbBarkod" placeholder="Barkod Numarası" title="Barkod Numarası" />
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbKitapAdi" placeholder="Kitap Adı"  title="Kitap Adı"/>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbYazarAdi" placeholder="Yazar Adı" title="Yazar Adı"/>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbYayinEvi" placeholder="Yayın Evi" title="Yayın Evi"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlTuru" title="Dolap Numarası" DataSourceID="osdDolap" DataTextField="ismi" DataValueField="ismi"/>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbYili" placeholder="Basım yılı" title="Basım yılı"/>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbSayfaSayisi" placeholder="Sayfa Sayısı" title="Sayfa Sayısı"/>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlDolapNumarasi" title="Dolap Numarası" DataSourceID="osdDolap" DataTextField="ismi" DataValueField="ismi"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:DropDownList runat="server" ID="ddlRafNumarasi" title="Raf Numarası" DataSourceID="osdRaf" DataTextField="ismi" DataValueField="ismi"/></td>
                    <td>
                        <asp:TextBox runat="server" ID="tbSiraNumarasi" placeholder="Sıra Numarası" title="Sıra Numarası"/></td>
                    <td colspan="2">
                        <asp:Button Text="Kaydet" runat="server"  id="btKaydet" OnClick="btKaydet_Click1"/></td>
                </tr>

                <tr><td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" PageSize="20">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

                    </td></tr>

            </table>


            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dalTableAdapters.kitaplarTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="tbBarkod" Name="barkod" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="tbKitapAdi" Name="kitapAdi" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="tbYazarAdi" Name="yazarAdi" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="tbYayinEvi" Name="yayinEvi" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="ddlTuru" Name="tur" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="tbYili" Name="yil" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="tbSayfaSayisi" Name="sayfaSayisi" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="ddlDolapNumarasi" Name="dolap" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlRafNumarasi" Name="raf" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="tbSiraNumarasi" Name="sira" PropertyName="Text" Type="String" />
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

            <asp:ObjectDataSource ID="osdRaf" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dalTableAdapters.rafTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ismi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ismi" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
                        <asp:ObjectDataSource ID="osdDolap" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="dalTableAdapters.dolapTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ismi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ismi" Type="String" />
                                <asp:Parameter Name="Original_id" Type="Int32" />
                            </UpdateParameters>
            </asp:ObjectDataSource>

        </div>
    </form>
</body>
</html>
