using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;


namespace Capa_Negocio
{
    
    public  class logTipoUsuario
    {
        private static connectDBDataContext db = new connectDBDataContext();

        public static List<tblTipoUs> obtenerTipUser()
        {
            var rs = db.tblTipoUs.Select(x => x);
            return rs.ToList();
        }

    }
}
