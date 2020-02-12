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
    public partial class KG : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["VTBag"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        SqlCommand komut;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.Open();
                komut = new SqlCommand("INSERT INTO DogukanRIT (KayitNo, Adi, Soyadi, CepTelefonu1, CepTelefonu2, Faks, EMail, Adres, RandevuTarihi, RandevuSaati) VALUES (@KayitNo,@Adi,@Soyadi,@CepTelefonu1,@CepTelefonu2,@Faks,@EMail,@Adres,@RandevuTarihi,@RandevuSaati)", baglanti);

                komut.Parameters.AddWithValue("@KayitNo", TextBox1.Text);
                komut.Parameters.AddWithValue("@Adi", TextBox2.Text);
                komut.Parameters.AddWithValue("@Soyadi", TextBox3.Text);
                komut.Parameters.AddWithValue("@CepTelefonu1", TextBox4.Text);
                komut.Parameters.AddWithValue("@CepTelefonu2", TextBox5.Text);
                komut.Parameters.AddWithValue("@Faks", TextBox6.Text);
                komut.Parameters.AddWithValue("@EMail", TextBox8.Text);
                komut.Parameters.AddWithValue("@Adres", TextBox7.Text);
                komut.Parameters.AddWithValue("@RandevuTarihi", TextBox9.Text);
                komut.Parameters.AddWithValue("@RandevuSaati", TextBox10.Text);
                komut.ExecuteNonQuery();

                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Kişi Kaydı Yapıldı.');</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                baglanti.Close();
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Bilgilendirme Mesajı", "<script>alert('Kişi Eklenirken Hata Oluştu.');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("KL.aspx");
        }
    }
}