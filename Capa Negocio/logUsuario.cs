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

        public static tblUsuario obtenerxNom(string nombre)
        {
            var usNom = db.tblUsuario.FirstOrDefault(pro => pro.usLog.Equals(nombre) && pro.usEstado == 'A');
            return usNom;
        }
        public static List<tblUsuario> obtenerUsuario()
        {
            var rs = db.tblUsuario.Where(x => x.usEstado == 'A');
            
            return rs.ToList();
        }

        public static void registrarUsuario(tblUsuario us)
        {
            try
            {
                us.usEstado = 'A';
                db.tblUsuario.InsertOnSubmit(us);
                db.SubmitChanges();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Datos no Guardados: " + ex.Message);
            }
        }

    }
}
