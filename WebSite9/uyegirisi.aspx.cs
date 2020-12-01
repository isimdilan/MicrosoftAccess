using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class uyegirisi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (TextBox1.Text == GridView1.Rows[i].Cells[3].Text && TextBox2.Text == GridView1.Rows[i].Cells[4].Text)
            {
                Session["giris"] = "1";
                Session["kullaniciadi"] = Convert.ToString(TextBox1.Text);
                Response.Redirect("anasayfa.aspx");


            }
            else
            { Label1.Visible = true; }
        }
    }
}
