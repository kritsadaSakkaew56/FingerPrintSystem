using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Sinif sinif1 = new Sinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = sinif1.baglan();
        SqlCommand cmd = new SqlCommand("insert into Haritalar (Adres,x,y,Aciklama) values (@Adres,@x,@y,@Aciklama)", baglanti);

        cmd.Parameters.Add("Adres", address.Text.ToString());
        cmd.Parameters.Add("x", latitude.Text.ToString());
        cmd.Parameters.Add("y", longitude.Text.ToString());
        cmd.Parameters.Add("Aciklama", aciklama.Text.ToString());
        cmd.ExecuteNonQuery();

        Label1.Visible = true;
        Label1.Text = "Ekleme Başarılı!";

    }
}