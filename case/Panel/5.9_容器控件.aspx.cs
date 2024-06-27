using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _5_9_容器控件 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Label1.Text = "请选择你的性别:";
        this.Label2.Text = "请选择你喜欢的游戏:";
        this.Label3.Text = "请选择你喜欢的化妆品品牌:";
        this.Button1.Text = "提交";
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "5.9 Panel 容器控件";
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        else
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
        }
            
            
    }
}