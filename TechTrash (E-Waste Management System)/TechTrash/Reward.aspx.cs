using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Reward : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

   /* protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(database_xml_csharp.ConnectionString);
        con.Open();
        cmd = new SqlCommand("SELECT SUM([Granted Reward]) FROM [Upload] WHERE [User_Phone_No] = @PhoneNo", con);
        cmd.Parameters.AddWithValue("@PhoneNo", Session["ph"].ToString());
        Label1.Text = cmd.ToString();
        
        if (!IsPostBack)
        {
            // Check if the session variable exists and is not null
            if (Session["ph"] != null)
            {
                // Retrieve the phone number from the session variable
                string userPhoneNumber = Session["ph"].ToString();

                // Use the phone number as needed
                // For example, you can use it in your SQL query to filter data
                MultiView1.SetActiveView(View1);
            }
            else
            {
                // Handle the case where the session variable is not set
                // Redirect the user to the login page or display an error message
            }
        }
    }*/
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if the session variable exists and is not null
            if (Session["ph"] != null)
            {
                // Retrieve the phone number from the session variable
                string userPhoneNumber = Session["ph"].ToString();

                // Use the phone number in your SQL query to filter data
                con = new SqlConnection(database_xml_csharp.ConnectionString);
                con.Open();
                cmd = new SqlCommand("SELECT SUM([Granted Reward]) FROM [Upload] WHERE [User_Phone_No] = @PhoneNo", con);
                cmd.Parameters.AddWithValue("@PhoneNo", userPhoneNumber);

                // Execute the command and read the result
                object result = cmd.ExecuteScalar();
                if (result != null && result != DBNull.Value)
                {
                    // Display the total granted reward in Label1
                    Label1.Text = result.ToString();
                }

                MultiView1.SetActiveView(View1);
            }
            else
            {
                // Handle the case where the session variable is not set
                // Redirect the user to the login page or display an error message
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.ultimatebattle.in/redeem-coins-shop");
    }
}
