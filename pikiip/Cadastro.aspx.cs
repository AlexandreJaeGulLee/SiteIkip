using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace pikiip
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["login_adm"];
            if (cookie == null || cookie.Value != "ok")
            {
                Response.Redirect("Login.aspx");
                return;
            }
        }

        protected void Cadastrar_Click(object sender, EventArgs e)
        {
           
            string nome = textNome.Text.Trim();
            if (nome.Length == 0)
            {
                erroNome.Text = "Nome inválido!";
                return;
            }

            erroNome.Text = "";
            string email = textEmail.Text.Trim();
            int arroba, arroba2, ponto;

            arroba = email.IndexOf('@');
            arroba2 = email.LastIndexOf('@');
            ponto = email.LastIndexOf('.');

            if (arroba <= 0 || ponto <= (arroba + 1) || ponto == (email.Length - 1) || arroba2 != arroba)
            {
                
                erroEmail.Text = "E-mail inválido!";
                return;
            }
            erroEmail.Text = "";
            string senha = textSenha.Text.Trim();
            if (senha.Length == 0)
            {
                
                erroSenha.Text = "Senha invalida";
                return;
            }
            erroSenha.Text = "";

      
            using (SqlConnection conn = Banco.OpenConnection())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO usuarios (nome,email,senha) VALUES (@nome, @email, @senha)", conn))
                {
                    cmd.Parameters.AddWithValue("@nome", nome);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@senha", senha);
                   
                    cmd.ExecuteNonQuery();
                }
            }


            //Limpa todos os campos ao final
            textNome.Text = "";
            textEmail.Text = "";
            textSenha.Text = "";
            

            msgCriar.Text = "Usuário criado com sucesso!";
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("telaPrincipalAdm.aspx");
        }
    }
}