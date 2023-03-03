using Microsoft.Extensions.FileSystemGlobbing.Internal;
using NuGet.Protocol.Plugins;
using ReinoTrebolK.DTO;
using ReinoTrebolK.Entities;
using System.Net;
using System.Text.RegularExpressions;
using static System.Net.Mime.MediaTypeNames;

namespace ReinoTrebolK.ClasesModel
{
    ///<summary>
    ///Clase Reglas de Funcionamiento.
    ///</summary>
    ///<remarks>
    ///Contiene las diferentes reglas de "negocio" y condicionales para cumplir con los requerimientos.
    ///</remarks>
    public class reglasFuncion
    {
        private readonly ReinotrebolContext DBContext;
        public reglasFuncion()
        {
            DBContext = new ReinotrebolContext();
        }

        public reglasFuncion(ReinotrebolContext dbC)
        {
            DBContext = dbC;
        }

        public Estudiante existEstudiante(string ide)
        {
            Estudiante Estu = DBContext.Estudiantes.Select(
                s => new Estudiante
                {
                    Nombre = s.Nombre,
                    Ide = s.Ide,
                    Apellido = s.Apellido,
                    Edad = s.Edad,
                    IdEstu = s.IdEstu

                    

                }).FirstOrDefault(s => s.Ide == ide);
            return Estu;
        }

        public Boolean validaDatos(Estudiante estu) {
            string patLetras = @"(\W|[0-9])";
            string patLetNum = @"\W";
            string patNum = @"\D";

            Boolean valueNom = Regex.IsMatch(estu.Nombre, patLetras) && estu.Nombre.Length <= 20;
            Boolean valueApe = Regex.IsMatch(estu.Apellido, patLetras) && estu.Apellido.Length <= 20;
            Boolean valueIDE = Regex.IsMatch(estu.Ide, patLetNum) && estu.Ide.Length <= 10;
            Boolean valueEdad = Regex.IsMatch(estu.Edad.ToString(), patNum) && estu.Edad.ToString().Length <= 2;

            if(!valueNom && !valueApe && !valueIDE && !valueEdad)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public ActSolicitud validarEstatus(string ide) {
            ActSolicitud Soli = DBContext.Solicituds.Select(
                s => new ActSolicitud
                {
                    Ide = s.IdEstu,
                    Estatus = s.Estatus,
                    IdSol = s.IdSoli

                }).FirstOrDefault(s => s.Ide == ide);
            return Soli;
        }

        public Grimorio asignarGrimorio()
        {
            Grimorio infoGri = null;
            //TemperatureC = Random.Shared.Next(-20, 55),
            var List = DBContext.Grimorios.Select(
                    s => new Grimorio
                    {
                        IdGrimorio = s.IdGrimorio,
                        TipoTrebol = s.TipoTrebol,
                        Descripcion = s.Descripcion

                    }
                ).ToList();
            infoGri = List[Random.Shared.Next(List.Count)];
            return infoGri;
        }


    }
}
