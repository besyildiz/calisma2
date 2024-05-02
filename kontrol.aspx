<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kontrol.aspx.cs" Inherits="kontrol" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Kullanıcı adı:</td>
                    <td>
                        <asp:TextBox runat="server" ID="tbKullaniciAdi" placeholder="Kullanıdı adı" /></td>
                </tr>
                <tr>
                    <td>Şifre: </td>
                    <td>
                        <asp:TextBox runat="server" ID="tbSifre" TextMode="Password" placeholder="Şifre" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right;">
                        <asp:Button Text="Giriş" ID="btGiris" runat="server" OnClick="btGiris_Click" />

                        <asp:Label Text="Bilgilerinizi kontrol ediniz" ForeColor="Red" Visible="false" runat="server" Font-Bold="true" ID="lbYanlis" />
                    </td>
                </tr>
            </table>
                    </div>
    </form>
</body>
</html>
