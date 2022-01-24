using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Negocio;
using Capa_Datos;

namespace Capa_Negocio
{
    public  class logCategoria
    {
        private static connectDBDataContext db = new connectDBDataContext();
        static public List<tblCategoria> obtenerCat()
        {
            var rs = db.tblCategoria.Select(c => c);
            return rs.ToList();
        }
    }
}
