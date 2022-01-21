using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
using Capa_Negocio;

namespace Capa_Negocio
{
    public  class logUsuario
    {
       static private connectDBDataContext db = new connectDBDataContext();

        public static bool usLog(string userlog)
        {
            var rs = db.tblUsuario.Any(x => x.usEstado == 'A' & x.usLog.Equals(userlog));
            return rs;
        }

        public static bool autentificarLog(string userlog, string clave)
        {
            var rs = db.tblUsuario.Any(x => x.usEstado == 'A' & x.usLog.Equals(userlog) & x.usClave.Equals(clave));
            return rs;
        }

        public static tblUsuario autentificarxLoginlog(string userlog, string clave)
        {
            var rs = db.tblUsuario.Single(x => x.usEstado == 'A' & x.usLog.Equals(userlog) & x.usClave.Equals(clave));
            return rs;
        }

    }
}
