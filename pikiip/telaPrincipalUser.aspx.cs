using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pikiip
{
    public partial class telaPrincipalUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["login_user"];
            if (cookie == null || cookie.Value != "ok")
            {
                Response.Redirect("Login.aspx");
                return;
            }
        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("login_user");
            cookie.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect("index.aspx");
        }
    }
}