using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Forgot_Password : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from Regis where Phone_No = @PhoneNo and Question = @Question and Answer = @Answer", con);
        cmd.Parameters.AddWithValue("@PhoneNo", txt_for_ph.Text);
        cmd.Parameters.AddWithValue("@Question", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Answer", txt_for_ans.Text);

        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lbl_for_pass.Text = "Your password is :" + dr[6].ToString();
        }
        else
        {
            lbl_for_pass.Text = "Invalid Credentials !!!";
        }
        con.Close();
    }

}