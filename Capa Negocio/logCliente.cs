using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
namespace Capa_Negocio
{
    public  class logCliente
    {
        private static connectDBDataContext db = new connectDBDataContext();

        public static bool ciLog(string userlog)
        {
            var rs = db.tblCliente.Any(cli => cli.cliEstado == 'A' & cli.cliLog.Equals(userlog));            return rs;
        }

        public static bool autentificar(string userlog,string clave)
        {
            var rs = db.tblCliente.Any(c => c.cliEstado == 'A' & c.cliLog.Equals(userlog) & c.cliClave.Equals(clave));
            return rs;
        }

        public static tblCliente autentificarxLogin(string userlog, string clave)
        {
            var rs = db.tblCliente.Single(c=> c.cliEstado=='A' & c.cliLog.Equals(userlog) & c.cliClave.Equals(clave));
            return rs;
        }



    }
}
