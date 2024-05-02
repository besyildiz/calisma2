using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class anasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"]!=null)
        {
            lbGiris.ForeColor = Color.Green;
            lbGiris.Text = "Hoşgeldiniz";
        }
        else
        {
            lbGiris.ForeColor = Color.Red;
            lbGiris.Text = "Yetkisiz giriş";

        }
    }
}