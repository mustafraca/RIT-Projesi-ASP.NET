using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace RandevuTakip
{
    public partial class KL : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["VTBag"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DogukanRIT", baglanti);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            if (TextBox1.Text != "" && TextBox2.Text == "")
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DogukanRIT WHERE KayitNo LIKE '%" + TextBox1.Text.ToString() + "%'", baglanti);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else if (TextBox1.Text == "" && TextBox2.Text != "")
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DogukanRIT WHERE Adi LIKE '%" + TextBox2.Text.ToString() + "%'", baglanti);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DogukanRIT", baglanti);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgi",
                            "<script>alert('Alanları boş bırakmayınız veya Her iki alana giriş yapmayınız.');</script>");
            }          
            baglanti.Close();
        }
    }
}