using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SenSevdigiAraba : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSec_Click(object sender, EventArgs e)
    {
        if (rdMercedes.Checked)
        {
            lbSecilen.Text = "Favori takımınz Mercedes";
        }
        if (rdAston.Checked)
        {
            lbSecilen.Text = "Favori takımınz Aston Martin";
        }
        if (rdMclaren.Checked)
        {
            lbSecilen.Text = "Favori takımınz Mclaren";
        }
        if (rdFerrari.Checked)
        {
            lbSecilen.Text = "Favori takımınz Ferrari";
        }
        if (rdRedbull.Checked)
        {
            lbSecilen.Text = "Favori takımınz Redbull";
        }
     
    }
}