using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kontrol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btGiris_Click(object sender, EventArgs e)
    {
        string kadi = "1", sifre = "2";

        if (kadi == tbKullaniciAdi.Text && sifre == tbSifre.Text)
        {
            Random s = new Random();
            int rastgele = s.Next(1000000);

            Session["id"] = rastgele.ToString() + DateTime.Now;

         

            Response.Redirect("anasayfa.aspx");

        }
        else
        {
            lbYanlis.Visible = true;
        }

    }
}