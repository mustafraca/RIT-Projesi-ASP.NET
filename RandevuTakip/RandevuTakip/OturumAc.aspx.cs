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
    public partial class OturumAc : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["VTBag"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        SqlConnection baglanti2 = new SqlConnection(baglanStr);
        SqlCommand komut;
        SqlCommand komut2;
        SqlDataReader reader;
        SqlDataReader reader2;
        public static bool tf = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (tf)
            {
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                Button1.Enabled = false;
                Label1.Text = "Zaten Oturum Açtınız.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                baglanti.Open();
                baglanti2.Open();
                komut = new SqlCommand("SELECT * FROM Kullanicilar WHERE Kullanici='" + TextBox1.Text + "'", baglanti);
                komut2 = new SqlCommand("SELECT * FROM Kullanicilar WHERE Kullanici='" + TextBox1.Text + "' AND Sifre='" + TextBox2.Text + "'", baglanti2);
                reader = komut.ExecuteReader();
                reader2 = komut2.ExecuteReader();
                try
                {
                    if (reader.Read() && reader2.Read())
                    {
                        tf = true;
                        Response.Redirect("Panel.aspx");
                    }
                    else
                    {
                        if ((reader.HasRows == true && reader2.HasRows == false) || (reader.HasRows == false && reader2.HasRows == true))
                        {
                            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Kullanıcı Adı veya Şifre Yanlış!');</script>");
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox1.Focus();
                        }
                        else
                        {
                            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Kullanıcı Kayıtlı Değil!');</script>");
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox1.Focus();
                        }
                    }
                }
                catch (Exception)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Oturum Açılırken Hata Oluştu.');</script>");
                }
                baglanti.Close();
                baglanti2.Close();
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Boş Alan Bırakmayınız!');</script>");
            }
        }
    }
}