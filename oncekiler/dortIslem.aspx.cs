using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dortIslem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btTopla_Click(object sender, EventArgs e)
    {
        lbSonuc.Text = Convert.ToString(Convert.ToInt32(tb1.Text)+ Convert.ToInt32(tb2.Text));
    }

    protected void btCikart_Click(object sender, EventArgs e)
    {
        lbSonuc.Text = Convert.ToString(Convert.ToInt32(tb1.Text) - Convert.ToInt32(tb2.Text));
    }

    protected void Carp_Click(object sender, EventArgs e)
    {
        lbSonuc.Text = Convert.ToString(Convert.ToInt32(tb1.Text) * Convert.ToInt32(tb2.Text));
    }

    protected void btBol_Click(object sender, EventArgs e)
    {
        lbSonuc.Text = Convert.ToString(Convert.ToDouble(tb1.Text) / Convert.ToDouble(tb2.Text));

    }
}