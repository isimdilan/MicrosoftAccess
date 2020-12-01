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

public partial class anasayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["giris"]) != "1")
        {
            Response.Redirect("uyegirisi.aspx");
        }
        Label1.Text = "" + Session["kullaniciadi"];
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sifredeğiştir.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("kisiselbilgiler.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        AccessDataSource1.Delete();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }
}
