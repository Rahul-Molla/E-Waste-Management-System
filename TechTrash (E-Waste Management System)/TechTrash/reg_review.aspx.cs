using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // Must add for database accesing
using System.Data; // Must add for database accesing

public partial class reg_review : System.Web.UI.Page
{
    SqlConnection con; // Must add for database accesing
    SqlCommand cmd;// Must add for database accesing

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cust_name"] != null)
        {
            lbl1.Text = Session["cust_name"].ToString();
        }

        if (Session["Gender"] != null)
        {
            lbl2.Text = Session["Gender"].ToString();
        }

        if (Session["cust_ph"] != null)
        {
            lbl3.Text = Session["cust_ph"].ToString();
        }

        if (Session["cust_email"] != null)
        {
            lbl4.Text = Session["cust_email"].ToString();
        }

        if (Session["cust_add"] != null)
        {
            lbl5.Text = Session["cust_add"].ToString();
        }

        if (Session["cust_pin"] != null)
        {
            lbl6.Text = Session["cust_pin"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Must add for adding data to dataset
        con = new SqlConnection(database_xml_csharp.ConnectionString);
        con.Open();
        cmd= new SqlCommand("insert into Regis values (@Name,@Gender,@Phone_No,@Email,@address,@Pin_code,@Password,@Question,@Answer)", con);
        cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = lbl1.Text;
        cmd.Parameters.Add("@Gender", SqlDbType.VarChar, 10).Value = lbl2.Text;
        cmd.Parameters.Add("@Phone_No", SqlDbType.VarChar, 10).Value = lbl3.Text;
        cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = lbl4.Text;
        cmd.Parameters.Add("@Address", SqlDbType.VarChar, 150).Value = lbl5.Text;
        cmd.Parameters.Add("@Pin_Code", SqlDbType.VarChar, 10).Value = lbl6.Text;
        cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = Session["cust_pass"].ToString();
        cmd.Parameters.Add("@Question", SqlDbType.VarChar, 50).Value = Session["qus"].ToString();
        cmd.Parameters.Add("@Answer", SqlDbType.VarChar, 50).Value = Session["ans"].ToString();


        if (cmd.ExecuteNonQuery() > 0)
        {
            lbl_succ.Text = "User Have Registered Successfully";
        }


        Response.Redirect("~/login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register.aspx");
    }
}