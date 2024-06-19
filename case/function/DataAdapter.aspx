    public void DropDataBind()
    {
        SqlConnection SqlConnection = new SqlConnection("server=.;database=web_project;Integrated Security=true;");
        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from stu_infor", SqlConnection);
        DataSet ds = new DataSet();
        sqlDataAdapter.Fill(ds, "stu_table");
        if (ds.Tables["stu_table"].Rows.Count != 0)
        {
            DropDownList1.DataSource = ds.Tables["stu_table"];
            DropDownList1.DataTextField = ds.Tables["stu_table"].Columns["sno"].ToString();
            DropDownList1.DataBind();
            DataRow dr = ds.Tables["stu_table"].Rows[0];
            TextBox1.Text = dr[1].ToString().Trim();
            if (dr[2] != Convert.DBNull)
            {
                if ((string)dr[2]=="male")
                {
                    RadioButton1.Checked = true;
                }
                else
                {
                    RadioButton2.Checked = true;
                }
            }
            else
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
            }
            
            TextBox2.Text = dr[3].ToString().Trim();
            TextBox3.Text = dr[4].ToString().Trim();
        }
    }
