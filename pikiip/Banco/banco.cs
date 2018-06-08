using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using pikiip.Models;
using System.Net;
using System.Text;
using System.IO;
using System.Web.Script.Serialization;

namespace pikiip
{
    public static class Banco
    {

        public static SqlConnection OpenConnection()
        {
            SqlConnection conn = new SqlConnection("Server=tcp:vegaslas.database.windows.net,1433;Database=Lasvegas;User ID=xsonyp;Password=Sonfeh.182;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            conn.Open();

            return conn;
        }
    }
}

