using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Home : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
        }
        else
        {
            Response.Redirect("admin_login.aspx");
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            MultiView1.SetActiveView(View1);
        }
    }
   
 
    protected void RadioButton2_CheckedChanged1(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            MultiView1.SetActiveView(View2);
        }

    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int pid = Convert.ToInt32(GridView2.DataKeys[gr.RowIndex].Value); // Assuming Pid is of type int
        Session["Pid"] = pid;

        con = new SqlConnection(database_xml_csharp.ConnectionString);
        con.Open();
        cmd = new SqlCommand("update Upload set Status='Approved' where Pid=@id", con);
        cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = GridView2.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("Date.aspx");
        }
    }

    protected void Reject_Click(object sender, EventArgs e)
    {   
        Control control = sender as Control;
        if (control != null)
        {   
            GridViewRow gridViewRow = (GridViewRow)control.Parent.Parent;

            con = new SqlConnection(database_xml_csharp.ConnectionString);
            con.Open();
            cmd = new SqlCommand("update Upload set Status='Rejected' where Pid=@id", con);
            cmd.Parameters.Add("@id", SqlDbType.VarChar, 50).Value = GridView2.DataKeys[gridViewRow.RowIndex].Value.ToString();
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Redirect("Admin_Home.aspx");
            }
            con.Close();
        }
    }


    protected void RadioButton3_CheckedChanged2(object sender, EventArgs e)
    {
        if (RadioButton3.Checked == true)
        {
            Response.Redirect("History.aspx");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HOME.aspx");
    }

}