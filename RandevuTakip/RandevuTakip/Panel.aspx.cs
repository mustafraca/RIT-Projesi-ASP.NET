﻿using System;
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
    public partial class Panel : System.Web.UI.Page
    {
        static string baglanStr = ConfigurationManager.ConnectionStrings["VTBag"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(baglanStr);
        SqlCommand komut;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (OturumAc.tf == false)
                Response.Redirect("OturumAc.aspx");
            else
            {
                baglanti.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM DogukanRIT", baglanti);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                baglanti.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("KG.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("KL.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            OturumAc.tf = false;
            Response.Redirect("Default.aspx");
        }
    }
}