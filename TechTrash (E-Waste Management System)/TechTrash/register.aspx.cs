using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cust_reg_Click(object sender, EventArgs e)
    {
        if (txt_cust_name.Text != "" &&
            txt_cust_add.Text != "" &&
            txt_cust_email.Text != "" &&
            txt_cust_ph.Text != "" &&
            txt_cust_pin.Text != "" &&
            txt_cust_sec_ans.Text != "")
        {
            // Store session values
            Session["cust_name"] = txt_cust_name.Text;
            Session["cust_add"] = txt_cust_add.Text;
            Session["cust_email"] = txt_cust_email.Text;
            Session["cust_ph"] = txt_cust_ph.Text;
            Session["cust_pin"] = txt_cust_pin.Text;
            Session["cust_pass"] = txt_cust_password.Text;
            Session["qus"] = DropDownList1.SelectedItem.Text;
            Session["ans"]=txt_cust_sec_ans.Text;

            // Check the gender selection and set the session variable
            if (rdb_cust_male.Checked)
            {
                Session["Gender"] = rdb_cust_male.Text;
            }
            else if (rdb_cust_female.Checked)
            {
                Session["Gender"] = rdb_cust_female.Text;
            }
            else if (rdb_cust_other.Checked)
            {
                Session["Gender"] = rdb_cust_other.Text;
            }
            // Password confirmation
            if (txt_cust_confirm_password.Text == txt_cust_password.Text)
            {
                long phoneNumber;
                if (!long.TryParse(txt_cust_ph.Text, out phoneNumber) || txt_cust_ph.Text.Length != 10)
                {
                    lbl_warn.Text = "* Invalid phone number format. Please enter 10 digits !!";
                }
                else
                {
                    if (txt_cust_email.Text == @"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                    {
                        lbl_warn.Text = "Invalid email address format.";
                    }
                    else
                    {
                        Response.Redirect("~/reg_review.aspx"); // Redirect to the review page 
                    }

                    
                }
                // Redirect to the review page 
               // Response.Redirect("~/reg_review.aspx");
            }
            else
            {
                lbl_warn.Text = "* Password has not confirmed correctly !!!";
            }
        }
        else
        {
            lbl_warn.Text = "* All Fields Are Required !!";
        }
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        // The gender session value is set in the stu_reg_Click method.
    }
  

}