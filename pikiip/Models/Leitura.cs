using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pikiip.Models
{
    public class Leitura
    {
        int id_leitura;

        int id_componente;

        string valor_leitura;

        DateTime momento_leitura;

        public int Id_leitura { get ; set ; }
        public int Id_componente { get; set; }
        public string Valor_leitura { get ; set ; }
        public DateTime Momento_leitura { get ; set; }
    }
}