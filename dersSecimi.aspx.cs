using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dersSecimi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void kontrol()
    {
        string secilen = "";

        if (cbMatematik.Checked)
        {
            secilen += cbMatematik.Text;
        }
        if (cbFizik.Checked)
        {
            secilen += " "+cbFizik.Text;
        }
        if (cbKimya.Checked)
        {
            secilen += " "+ cbKimya.Text;
        }
        if (cbBiyoloji.Checked)
        {
            secilen +=" "+ cbBiyoloji.Text;
        }

        ltSecilenDersler.Text="Seçtiğiniz dersler: "+
            
            "<span style='color:red;'> "+
            secilen
            +"<span> ";



    }

    protected void cbMatematik_CheckedChanged(object sender, EventArgs e)
    {
        kontrol();
    }

    protected void cbFizik_CheckedChanged(object sender, EventArgs e)
    {
        kontrol();
    }

    protected void cbKimya_CheckedChanged(object sender, EventArgs e)
    {
        kontrol();
    }

    protected void cbBiyoloji_CheckedChanged(object sender, EventArgs e)
    {
        kontrol();
    }
}