using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _5_30_Linked_to_sql : System.Web.UI.Page
{
    public SqlConnection SqlCon = new SqlConnection("server=.;database=new1_5.20;Integrated Security=true;");
    // 创建公共使用的SqlConnection对象
    
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Label1.Text = "信息获取";
        this.Label2.Text = "请选择学号：";
        this.Label3.Text = "姓名：";
        this.Label4.Text = "专业：";
        this.Label5.Text = "照片：";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // 首次加载
        {
            SqlDataAdapter sqlDa = new SqlDataAdapter("select * from stu_info", SqlCon);
            DataSet ds = new DataSet();
            sqlDa.Fill(ds,"stu_info");

            if (ds.Tables["stu_info"].Rows.Count != 0)
            {
                DropDownList1.DataSource = ds.Tables["stu_info"];
                DropDownList1.DataTextField = ds.Tables["stu_info"].Columns["sno"].ToString();
                DropDownList1.DataBind();
                // 以上三句指明了DropDownList1所显示的内容:所有学号
                DataRow dr = ds.Tables["stu_info"].Rows[0];
                // dr表示stu_info的第一行
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[4].ToString();
                Image1.ImageUrl = dr[5].ToString();
            }
        }
        this.Title = "5.30 Linked to SQL";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String snoIndex = DropDownList1.SelectedItem.Text;
        // String snoIndex = DropDownList1.SelectedValue;
        SqlDataAdapter sqlDa = new SqlDataAdapter("select * from stu_info where sno='" + snoIndex + "'", SqlCon);
        DataSet ds = new DataSet();
        sqlDa.Fill(ds,"stu_info");  // 创建虚拟表
        DataRow dataRow = ds.Tables["stu_info"].Rows[0];
        TextBox1.Text = dataRow[1].ToString();
        TextBox2.Text = dataRow[4].ToString();
        Image1.ImageUrl = dataRow[5].ToString();
    }
}
