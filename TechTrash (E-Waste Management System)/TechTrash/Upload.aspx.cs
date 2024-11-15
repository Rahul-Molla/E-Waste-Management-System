using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Upload : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   /* protected void Button1_Click(object sender, EventArgs e)
    {
        // Must add for adding data to dataset
        con = new SqlConnection(database_xml_csharp.ConnectionString);
        con.Open();
        cmd= new SqlCommand("insert into Upload values (@ProCat,@ProBrand,@ProSNo,@ProQty,@ProDes,@ProFile,@Status,@User_Phone_No,@Exp,@PickedUp,@Pending,@Granted)", con);
        cmd.Parameters.Add("@ProCat", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@ProBrand", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@ProSNo", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@ProQty", SqlDbType.Int).Value = TextBox2.Text;
        cmd.Parameters.Add("@ProDes", SqlDbType.VarChar, 500).Value = TextBox3.Text;
        FileUpload1.SaveAs(Server.MapPath("Product_Img"+"/"+FileUpload1.FileName));
        cmd.Parameters.Add("@ProFile", SqlDbType.VarChar, 50).Value = "Product_Img"+"/"+FileUpload1.FileName;
        cmd.Parameters.Add("@Status", SqlDbType.VarChar, 10).Value = "Pending";
        cmd.Parameters.Add("@User_Phone_No", SqlDbType.VarChar, 50).Value = Session["ph"].ToString();
        cmd.Parameters.Add("@Exp", SqlDbType.Date).Value = DBNull.Value;
        cmd.Parameters.Add("@PickedUp", SqlDbType.VarChar, 10).Value = "No";
        cmd.Parameters.Add("@Pending", SqlDbType.VarChar, 10).Value = 0;
        cmd.Parameters.Add("@Granted", SqlDbType.VarChar, 10).Value = 0;

        if (cmd.ExecuteNonQuery() > 0)
        {
            lbl_status.Text = "Uploaded Successfully✅";
            cmd = new SqlCommand("select * from Upload where User_Phone_No = @PhoneNo and ProSNo = @ProSNo", con);
            cmd.Parameters.AddWithValue("@PhoneNo", Session["ph"].ToString());
            cmd.Parameters.AddWithValue("@ProSNo", TextBox1.Text);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["Pid"] = dr[9].ToString();
                lbl_status0.Text = "Your Alloted Pid: "+Session["Pid"].ToString();
            }
            if (DropDownList1.SelectedItem.Text == "CPU" || DropDownList1.SelectedItem.Text == "Desktop" || DropDownList1.SelectedItem.Text == "Laptop" || DropDownList1.SelectedItem.Text == "Monitor" || DropDownList1.SelectedItem.Text == "Mobile Phone" || DropDownList1.SelectedItem.Text == "Tablet" || DropDownList1.SelectedItem.Text == "Television" || DropDownList1.SelectedItem.Text == "Fridge" || DropDownList1.SelectedItem.Text == "Air Conditioner" || DropDownList1.SelectedItem.Text == "Air Cooler" || DropDownList1.SelectedItem.Text == "Printer")
            {
                int reward = int.Parse(TextBox2.Text) * 100;
                cmd.Parameters.Add("@Pending", SqlDbType.VarChar, 10).Value = reward;
                lbl_rew.Text = reward + " E-Coin is Waiting for You ⏳";
                cmd.Parameters.Add("@Pending", SqlDbType.VarChar, 10).Value = reward;

            }
            else
            {
                int reward = int.Parse(TextBox2.Text) * 50;
                cmd.Parameters.Add("@Pending", SqlDbType.VarChar, 10).Value = reward;
                lbl_rew.Text = reward + " E-Coin is Waiting for You ⏳";
                cmd.Parameters.Add("@Pending", SqlDbType.VarChar, 10).Value = reward;
            }
        }

        con.Close();

        //Response.Redirect("~/register.aspx");
    }*/

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Must add for adding data to dataset
        con = new SqlConnection(database_xml_csharp.ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into Upload values (@ProCat,@ProBrand,@ProSNo,@ProQty,@ProDes,@ProFile,@Status,@User_Phone_No,@Exp,@PickedUp,@Pending,@Granted)", con);
        cmd.Parameters.Add("@ProCat", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@ProBrand", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@ProSNo", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@ProQty", SqlDbType.Int).Value = TextBox2.Text;
        cmd.Parameters.Add("@ProDes", SqlDbType.VarChar, 500).Value = TextBox3.Text;
        FileUpload1.SaveAs(Server.MapPath("Product_Img" + "/" + FileUpload1.FileName));
        cmd.Parameters.Add("@ProFile", SqlDbType.VarChar, 50).Value = "Product_Img" + "/" + FileUpload1.FileName;
        cmd.Parameters.Add("@Status", SqlDbType.VarChar, 10).Value = "Pending";
        cmd.Parameters.Add("@User_Phone_No", SqlDbType.VarChar, 50).Value = Session["ph"].ToString();
        cmd.Parameters.Add("@Exp", SqlDbType.Date).Value = DBNull.Value;
        cmd.Parameters.Add("@PickedUp", SqlDbType.VarChar, 10).Value = "No";

        int reward = 0;
        if (DropDownList1.SelectedItem.Text == "CPU" || DropDownList1.SelectedItem.Text == "Desktop" || DropDownList1.SelectedItem.Text == "Laptop" || DropDownList1.SelectedItem.Text == "Monitor" || DropDownList1.SelectedItem.Text == "Mobile Phone" || DropDownList1.SelectedItem.Text == "Tablet" || DropDownList1.SelectedItem.Text == "Television" || DropDownList1.SelectedItem.Text == "Fridge" || DropDownList1.SelectedItem.Text == "Air Conditioner" || DropDownList1.SelectedItem.Text == "Air Cooler" || DropDownList1.SelectedItem.Text == "Printer")
        {
            reward = int.Parse(TextBox2.Text) * 100;
        }
        else
        {
            reward = int.Parse(TextBox2.Text) * 50;
        }

        cmd.Parameters.Add("@Pending", SqlDbType.VarChar, 10).Value = reward;
        cmd.Parameters.Add("@Granted", SqlDbType.VarChar, 10).Value = 0;

        if (cmd.ExecuteNonQuery() > 0)
        {
            lbl_status.Text = "Uploaded Successfully✅";
            cmd = new SqlCommand("select * from Upload where User_Phone_No = @PhoneNo and ProSNo = @ProSNo", con);
            cmd.Parameters.AddWithValue("@PhoneNo", Session["ph"].ToString());
            cmd.Parameters.AddWithValue("@ProSNo", TextBox1.Text);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["Pid"] = dr[9].ToString();
                lbl_status0.Text = "Your Alloted Pid: " + Session["Pid"].ToString();
            }
            lbl_rew.Text = reward + " E-Coin is Waiting for You ⏳";
        }

        con.Close();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/track.aspx");
    }
}