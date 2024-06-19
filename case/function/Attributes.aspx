protected void Page_Load(object sender, EventArgs e)
{
Button1.Attributes["OnClick"] = "return confirm('Are you sure to update this?')";
Button2.Attributes["OnClick"] = "return confirm('Are you sure to delete?')";
}
