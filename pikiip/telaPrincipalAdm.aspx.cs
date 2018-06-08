using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using pikiip.Models;
using System.Collections;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;

namespace pikiip
{
    public partial class telaPrincipalAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["login_adm"];
            if (cookie == null || cookie.Value != "ok")
            {
                Response.Redirect("Login.aspx");
                return;
            }

            List<Maquina> maquinas = new List<Maquina>();

            string url = "https://jsonplaceholder.typicode.com/posts";

            WebRequest request = WebRequest.Create(url);
            request.Credentials = CredentialCache.DefaultCredentials;
            WebResponse response = request.GetResponse();

            Stream dataStream = response.GetResponseStream();

            StreamReader reader = new StreamReader(dataStream);

            string responseFromServer = reader.ReadToEnd();

            JavaScriptSerializer js = new JavaScriptSerializer();
            var objText = reader.ReadToEnd();
            Temp myojb = (Temp)js.Deserialize(objText, typeof(Temp));

            //Console.WriteLine(myojb.Title);

            Label1.Text = myojb.Title;

            reader.Close();
            response.Close();
          

        }   

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastro.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("login_adm")
            {
                Expires = DateTime.Now.AddYears(-1)
            };
            Response.Cookies.Add(cookie);
            Response.Redirect("index.aspx");
        }


    }
}