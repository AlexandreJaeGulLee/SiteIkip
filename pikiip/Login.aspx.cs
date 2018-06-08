using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace pikiip
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {

            using (SqlConnection conn = Banco.OpenConnection())
            {
                using (SqlCommand cmd = new SqlCommand("SELECT email, senha FROM usuarios WHERE email = @email and senha = @senha", conn))
                {
                    cmd.Parameters.AddWithValue("@email", bLogin.Text);
                    cmd.Parameters.AddWithValue("@senha", bSenha.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {
                            HttpCookie cookie = new HttpCookie("login_user", "ok");
                            cookie.Expires = DateTime.MinValue;
                            Response.Cookies.Set(cookie);
                            Response.Redirect("telaPrincipalUser.aspx");
                        }
                        else if (bLogin.Text == "admin@admin" && bSenha.Text == "admin")
                        {
                            HttpCookie cookie = new HttpCookie("login_adm", "ok");
                            cookie.Expires = DateTime.Now.AddYears(1);
                            Response.Cookies.Add(cookie);
                            Response.Redirect("telaPrincipalAdm.aspx");
                        }
                        else
                        {
                            lbMsg.Text = "Usuário ou senha inválidos!";
                        }
                    }
                }
            }
        }
    }
}