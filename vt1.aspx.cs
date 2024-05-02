using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal;
using System.Xml.Linq;
using System.Xml;

public partial class vt1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       



        using (var db=new verilerim())
        {
            try
            {
                


                var dataContext = new verilerim();

                var bilgi = (from kitap in dataContext.kitaplar
                               select kitap).ToList();
                 
 

                dataGridView1.DataSource = bilgi.ToList();
                dataGridView1.DataBind();
            }
            catch (Exception ex)
            {
                // Hata mesajını logla veya kullanıcıya göster
                Response.Write("Veri yükleme hatası: " + ex.Message);
            }
        }



        /*

        // Bağlantı dizesi
        string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\veri.mdb;";

        // Verileri tutmak için bir DataTable oluşturun
        DataTable dataTable = new DataTable();

        // OleDbDataAdapter kullanarak verileri DataTable'a yükleyin
        using (OleDbConnection connection = new OleDbConnection(connectionString))
        {
            // Veritabanı bağlantısını açın
            connection.Open();

            // Verileri tutmak için bir OleDbDataAdapter oluşturun
            using (OleDbDataAdapter adapter = new OleDbDataAdapter("SELECT * FROM kitaplar", connection))
            {
                // DataSet'e verileri yükleyin
                adapter.Fill(dataTable);
            }
        }

        // LINQ kullanarak DataTable'daki verileri sorgulayın
        var query = from DataRow row in dataTable.Rows
                    select new
                    {
                        barkod = row["barkod"],
                        kitapAdi = row["kitapAdi"],
                        yazarAdi = row["yazarAdi"],
                        yayinEvi = row["yayinEvi"],
                        turu = row["turu"],
                        yil = row["yil"],
                        sayfaSayisi = row["sayfaSayisi"],
                        raf = row["raf"],
                        siraNo = row["siraNo"]
                    };

        // DataGridView'e veri kaynağı olarak atayın
        dataGridView1.DataSource = query;
        dataGridView1.DataBind();

        */
        /*

        // Bağlantı dizesi
        string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\veri.mdb;";

        // Verileri tutmak için bir DataSet oluşturun
        DataSet dataSet = new DataSet();

        // OleDbDataAdapter kullanarak verileri DataSet'e yükleyin
        using (OleDbConnection connection = new OleDbConnection(connectionString))
        {
            // Veritabanı bağlantısını açın
            connection.Open();

            // Verileri tutmak için bir OleDbDataAdapter oluşturun
            using (OleDbDataAdapter adapter = new OleDbDataAdapter("SELECT * FROM kitaplar", connection))
            {
                // DataSet'e verileri yükleyin
                adapter.Fill(dataSet);
            }
        }

        // DataSet'i GridView'e doğrudan veri kaynağı olarak atayın
        dataGridView1.DataSource = dataSet.Tables[0];
        dataGridView1.DataBind();
*/













        /*
                // Bağlantı dizesi
                string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\veri.mdb;";

                // OleDbConnection kullanarak bağlantı oluşturun
                using (OleDbConnection connection = new OleDbConnection(connectionString))
                {
                    // Veritabanı bağlantısını açın
                    connection.Open();

                    // Verileri tutmak için bir DataTable oluşturun
                    DataTable dt = new DataTable();

                    // Verileri çekmek için bir OleDbDataAdapter oluşturun
                    using (OleDbDataAdapter da = new OleDbDataAdapter("SELECT barkod FROM kitaplar", connection))
                    {
                        // Verileri DataTable'a yükleyin
                        da.Fill(dt);
                    }

                    // DataTable'ı LINQ ile kullanarak sorgulayın ve DataGridView'e veri kaynağı olarak atayın
                    var query = from DataRow row in dt.Rows
                                select new
                                {
                                    Barkod = row["barkod"].ToString()
                                };

                    dataGridView1.DataSource = query.ToList();
                    dataGridView1.DataBind();
                }
                */
















    }

}