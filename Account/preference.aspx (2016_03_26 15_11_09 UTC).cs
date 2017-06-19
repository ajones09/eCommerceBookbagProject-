using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_preference : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
        }
    }


    protected void setPrefernces_Click(object sender, EventArgs e)
    {
        Response.Redirect("setPreferences.aspx");

    }

    protected void return_Click(object sender, EventArgs e)
    {
        Response.Redirect("Account.aspx");
    }
}