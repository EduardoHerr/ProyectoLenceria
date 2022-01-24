using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Datos;
using Capa_Negocio;

namespace Capa_Negocio
{
    public class logVentas
    {
        static private connectDBDataContext db = new connectDBDataContext();
        public static tblProducto obtenerproxID(int key)
        {
            var rs = db.tblProducto.FirstOrDefault(x => x.proEstado == 'A' & x.proId == key);
            return rs;
        }
        public static tblCliente obtenerclixID(int key)
        {
            var rs = db.tblCliente.FirstOrDefault(x => x.cliEstado == 'A' & x.cliId == key);
            return rs;
        }

        public static tblCliente obtenerxNom(string nombre)
        {
            var prodNom = db.tblCliente.FirstOrDefault(pro => pro.cliLog.Equals(nombre) && pro.cliEstado == 'A');
            return prodNom;
        }
        public static void guardarVenta(tblVenta vent)
        {
            try
            {
                
                db.tblVenta.InsertOnSubmit(vent);
                db.SubmitChanges();


            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error: " + ex.Message);
            }
        }
    }
}
