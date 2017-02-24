using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for Sinif
/// </summary>
public class Sinif
{
	public Sinif()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public SqlConnection baglan()
    {
        SqlConnection baglanti = new SqlConnection("Data Source=USER\\SQL2014; initial Catalog=vt; integrated Security=True");
        baglanti.Open();
        return (baglanti);
    }

    public int cmd(string sqlcumle)
    {
        SqlConnection baglan = this.baglan();
        SqlCommand sorgu = new SqlCommand(sqlcumle, baglan);
        int sonuc = 0;
        try
        {
            sonuc = sorgu.ExecuteNonQuery();

        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message + "(" + sqlcumle + ")");
        }
        sorgu.Dispose();
        baglan.Open();
        baglan.Dispose();
        return (sonuc);
    }

}