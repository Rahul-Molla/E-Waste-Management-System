using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class History : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            MultiView1.SetActiveView(View1);
        }
    }
  /* protected void Button13_Click(object sender, EventArgs e)
    {
        Control control = sender as Control;
        if (control != null)
        {
            GridViewRow gridViewRow = (GridViewRow)control.Parent.Parent;

            con = new SqlConnection(database_xml_csharp.ConnectionString);
            con.Open();
            cmd = new SqlCommand("update Upload set PickedUp='Yes' where Pid=@id", con);
            cmd.Parameters.Add("@id", SqlDbType.VarChar, 10).Value = GridView1.DataKeys[gridViewRow.RowIndex].Value.ToString();
           
    

            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Redirect("History.aspx");
            }
            con.Close();
        }
    }*/

    protected void Button13_Click(object sender, EventArgs e)
    {
        Control control = sender as Control;
        if (control != null)
        {
            GridViewRow gridViewRow = (GridViewRow)control.Parent.Parent;

            con = new SqlConnection(database_xml_csharp.ConnectionString);
            con.Open();

            // Update PickedUp column
            cmd = new SqlCommand("UPDATE Upload SET PickedUp='Yes' WHERE Pid=@id", con);
            cmd.Parameters.Add("@id", SqlDbType.VarChar, 10).Value = GridView1.DataKeys[gridViewRow.RowIndex].Value.ToString();
            cmd.ExecuteNonQuery();

            // Update Granted_Reward column with the value from Pending_Reward column
            cmd = new SqlCommand("UPDATE Upload SET [Granted Reward] = [Pending Reward] WHERE Pid = @Pid", con);
            cmd.Parameters.AddWithValue("@Pid", GridView1.DataKeys[gridViewRow.RowIndex].Value.ToString());
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("History.aspx");
        }
    }



   protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
   {

   }
   protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
   {
       if (RadioButton2.Checked == true)
       {
           MultiView1.SetActiveView(View2);
       }
   }

}