using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin@123")
        {
            Session["user"] = "Admin";
            Response.Redirect("Admin_Home.aspx");
        }
        else
        {
            lbl_ck.Text = "Invalid Credential!!!!";
        }
    }
}