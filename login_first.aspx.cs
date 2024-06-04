using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_first : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Login";
        this.Label1.Text = "Login";
        this.Label2.Text = "Username";
        this.Label3.Text = "Password";
        this.Button1.Text = "Submit";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["log_user"] = TextBox1.Text;
        Session["log_pwd"] = TextBox2.Text;
        Response.Redirect("login_contend.aspx");
    }
}