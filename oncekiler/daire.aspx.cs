using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class daire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btHesapla_Click(object sender, EventArgs e)
    {
        int yariCap = Convert.ToInt16(tbYariCap.Text);


        //  double alan = Math.PI * Math.Pow(yariCap, 2); // pi.r.r

        double alan = 3 * yariCap * yariCap; // pi.r.r

        double cevre = 2 * 3 * yariCap;// 2.pi.r

        //    double cevre = 2 * Math.PI * yariCap;// 2.pi.r

        lbSonuc.Text = "Çevre=" + cevre.ToString() + " Alan=" + alan.ToString();
    }
}