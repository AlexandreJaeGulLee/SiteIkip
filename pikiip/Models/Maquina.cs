using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace pikiip.Models
{
    public class Maquina
    {
        private long id_maquina;
        private string nome_maquina;
        private string os;
        private string os_version;
        private string serial_number;
        private string identifier;

        public long Id_maquina { get; set; }
        public string Nome_maquina { get; set; }
        public string Os { get; set; }
        public string Os_version { get; set; }
        public string Serial_number { get; set; }
        public string Identifier { get; set; }

    }
}