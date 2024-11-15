using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // Must add for database accesing
using System.Data; // Must add for database accesing

public partial class Date : System.Web.UI.Page
{
    SqlConnection con; // Must add for database accesing
    SqlCommand cmd;// Must add for database accesing

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["Pid"] != null)
        {
            int pid = Convert.ToInt32(Session["Pid"]);
            con = new SqlConnection(database_xml_csharp.ConnectionString);
            con.Open();
            cmd = new SqlCommand("update Upload set [Expected Pickup Date]=@date where Pid=@id", con);
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = Calendar1.SelectedDate;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = pid;
            if (cmd.ExecuteNonQuery() > 0)
            {
                // RegisterStartupScript is deprecated, use RegisterClientScriptBlock instead
                string script = "<script>alert('Pickup date is scheduled.'); setTimeout(function(){ window.location.href = 'Admin_Home.aspx'; }, 100);</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", script);
            }
            con.Close();
        }
    }


}