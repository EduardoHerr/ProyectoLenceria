using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Capa_Negocio;
using Capa_Datos;

namespace Capa_Negocio
{
    public class logProductos
    {
        private static connectDBDataContext db = new connectDBDataContext();

        public static List<tblProducto> obtenerxCat(int key)
        {
            var rs = db.tblProducto.Where(x=> x.proEstado =='A'  & x.catId==key);
            return rs.ToList();
        }

        public static void guardarProd(tblProducto pro)
        {
            try
            {
                pro.proEstado = 'A';
                db.tblProducto.InsertOnSubmit(pro);
                db.SubmitChanges();


            }
            catch (Exception ex)
            {

                throw new ArgumentException("Error: " + ex.Message);
            }
        }

        public static tblProducto obtenerxID(int key)
        {
            var rs = db.tblProducto.FirstOrDefault(x => x.proEstado =='A' & x.proId==key);
            return rs;
        }

        public static void edit(tblProducto pro)
        {
            try
            {
                //tblProducto prod = db.tblProducto.Single(x=> x.proId == pro.proId);
                //prod.proNombre = pro.proNombre;
                //prod.proMarca = pro.proMarca;
                //prod.proTalla = pro.proTalla;
                //prod.proColor = pro.proColor;
                //prod.proPrecio = pro.proPrecio;
                //prod.proCantidad = pro.proCantidad;
                //prod.proArte = pro.proArte;
                //prod.proTituloArte = pro.proTituloArte;
                //prod.catId = pro.catId;
                //prod.proArteNom = pro.proArteNom;



                db.SubmitChanges();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Los datos no fueron Modificados <br/>" + ex.Message);
            }
        }

        public static void deleteProd( tblProducto pro)
        {
            try
            {
                pro.proEstado='I';
                db.SubmitChanges();
            }
            catch (Exception ex)
            {

                throw new ArgumentException("Los datos no fueron Modificados <br/>" + ex.Message);
            }
        }
    }
}
