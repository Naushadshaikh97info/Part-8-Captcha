using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Captch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
            return;
    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        try
        {
            CaptchaControl1.ValidateCaptcha(txt_captch.Text);
            if (!CaptchaControl1.UserValidated)
            {
                // ScriptManager.RegisterStartupScript(this, GetType(), "onload", "alert('You have Entered Valid Captcha Characters')", true);
                lbl_lable.Text = "You have Entered InValid Captcha Characters please Enter again ";
                lbl_lable.ForeColor = System.Drawing.Color.Green;
                txt_captch.Text = string.Empty;
               
            }
            else
            {
                // ScriptManager.RegisterStartupScript(this, GetType(), "onload", "alert('You have Entered InValid Captcha Characters please Enter again ')", true);
                lbl_lable.ForeColor = System.Drawing.Color.Green;
                lbl_lable.Text = "You have Entered Valid Captcha Characters";
                txt_captch.Text = string.Empty;
            }

        }
        catch (Exception ex)
        {
            throw;
        }
    }
   
}