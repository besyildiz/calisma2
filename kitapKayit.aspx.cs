using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kitapKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  
  
    protected void btKaydet_Click1(object sender, EventArgs e)
    {
        try
        {
            ObjectDataSource1.Insert();
            GridView1.DataBind();
        }
        catch (Exception w)
        {

            Response.Write(w.Message);
        }
      
    }
}