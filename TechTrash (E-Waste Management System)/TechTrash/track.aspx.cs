using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class track : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from Upload where Pid = @Pid", con);
        cmd.Parameters.AddWithValue("@Pid", TextBox1.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr[6].ToString() == "Approved")
            {
                if (dr[10].ToString() == "Yes")
                {
                    lbl_apr.Text = "Your Product has been Picked Up 🚚 ";
                }
                else
                {
                    lbl_apr.Text = "Your Product Status Is Approved ✅ The Expected Pickup Date Is: " + dr[8].ToString();
                }
            }
            else if (dr[6].ToString() == "Rejected")
            {
                lbl_apr.Text = "Your Product Status Is Rejected ❌ To Know Details Do Contact With US ";
            }
            else
            {
                lbl_reward.Text = "Your Product Status Is Pending ⏳" ;
            }
        }
        con.Close();
    }
}