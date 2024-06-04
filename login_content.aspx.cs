using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_contend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Content";
        if (Session["log_user"] == null && Session["log_pwd"] == null)
        {
            Response.Redirect("login_first.aspx");
        }
        else
        {
            Response.Write("欢迎" + Session["log_user"]);
        }
    }
}