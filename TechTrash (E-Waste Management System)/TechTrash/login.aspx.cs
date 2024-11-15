using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(database_xml_csharp.ConnectionString);
        con.Open();
        cmd = new SqlCommand("select * from Regis where Phone_No = @PhoneNo and Password = @Pass", con);
        cmd.Parameters.AddWithValue("@PhoneNo", txt_cust_ph.Text);
        cmd.Parameters.AddWithValue("@Pass", txt_cust_pass.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["ph"] = dr[2].ToString();
            Response.Redirect("~/Upload.aspx");
        }
        else
        {
            warn.Text = "Invalid Credentials !!!";
        }
        con.Close();
    }
}