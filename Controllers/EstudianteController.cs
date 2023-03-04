using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ReinoTrebolK.ClasesModel;
using ReinoTrebolK.DTO;
using ReinoTrebolK.Entities;

namespace ReinoTrebolK.Controllers
{
    ///<summary>
    ///Clase Controlador de Estudiante.
    ///</summary>
    ///<remarks>
    ///Aqui se exponen los metodos GET, POST, PUT Y DELETE.
    ///</remarks>
    [Route("api/[controller]")]
    [ApiController]
    public class EstudianteController : ControllerBase
    {
        private readonly ReinotrebolContext DBContext;
        private MensajesRespuesta MensajeResp;

        public EstudianteController(ReinotrebolContext DBContext)
        {
            this.DBContext = DBContext;
            this.MensajeResp= new MensajesRespuesta();
        }

        ///<summary>
        ///Metodo GET, que llama al SP obtener_solicitudes.
        ///</summary>
        ///<return>
        ///Devuelve una lista de las solicitues de estudiantes.
        ///</return>
        // GET api/<obtenerSolicitudes>
        [HttpGet("obtenerSolicitudes")]
        public async Task<MensajeRespuesta> Get()
        {
            var List = DBContext.Set<SolicitudesDTO>().FromSqlRaw("CALL obtener_solicitudes").ToList<SolicitudesDTO>();
            if(List.Count == 0)
            {
                return MensajeResp.dataSoliVacio(List);
            }
            return MensajeResp.dataSoliOK(List);

        }

        ///<summary>
        ///Metodo GET, que llama al SP obtener_asignaciones.
        ///</summary>
        ///<return>
        ///Devuelve una lista de las asignacionaciones de grimorios.
        ///</return>
        // GET api/<obtenerAsignaciones>/
        [HttpGet("obtenerAsignaciones")]
        public async Task<MensajeRespuesta> GetA()
        {
            var List = DBContext.Set<AsignacionesG>().FromSqlRaw("CALL obtener_asignaciones").ToList<AsignacionesG>();
            if(List.Count == 0)
            {
                return MensajeResp.dataAsigVacio(List);
            }
            return MensajeResp.dataAsigOK(List);

        }

        ///<summary>
        ///Metodo POST, que inserta en la tabla estudiantes y solicitudes.
        ///</summary>
        ///<return>
        ///Devuelve un mensaje indicando si la inseccion fue correcta.
        ///</return>
        ///<param name="Soli">
        ///Objeto SolicitudDTO, JSON con los parametros; ide, nombre, apellido, edad, idMagia.
        ///</param>
        // POST api/<insertarSolicitud>
        [HttpPost("insertarSolicitud")]
        public async Task<MensajeRespuesta> InsertSolicitud(SolicitudDTO Soli)
        {
            
            reglasFuncion reglas = new reglasFuncion(DBContext);
            
            try
            {
                Estudiante existeEstu = reglas.existEstudiante(Soli.Ide);
                var entity = new Estudiante()
                {
                    Nombre = Soli.Nombre,
                    Apellido = Soli.Apellido,
                    Edad = Soli.Edad,
                    Ide = Soli.Ide
                };

                if (existeEstu == null  )
                {
                    DBContext.Estudiantes.Add(entity);
                    await DBContext.SaveChangesAsync();

                }
                else
                {
                    entity = existeEstu;
                }

                ActSolicitud existeSol = reglas.validarEstatus(Soli.Ide);
                if (existeSol == null)
                {
                    var entityS = new Solicitud()
                    {
                        IdEstu = Soli.Ide,
                        IdMagia = Soli.IdMagia,
                        Estatus = reglas.validaDatos(entity) ? 3 : 2
                    };

                    DBContext.Solicituds.Add(entityS);
                    await DBContext.SaveChangesAsync();
                    if (existeEstu != null)
                    {

                        return MensajeResp.estudianteExiste(Soli.Ide);
                    }
                    return MensajeResp.estudianteRegistrado(Soli.Ide);
                }
                else
                {
                    return MensajeResp.solsiExiste(Soli.Ide);
                }
            }
            catch(Exception ex)
            {
                    return MensajeResp.errorGen(ex.ToString(), "Insertar");

            }
            
        }

        ///<summary>
        ///Metodo POST, que inserta datos en la tabla solicitudes.
        ///</summary>
        ///<return>
        ///Devuelve un mensaje indicando si la inseccion fue correcta.
        ///</return>
        ///<param name="Soli">
        ///Objeto Solicitud, JSON con los parametros; IdEstu, IdMagia, Estatus.
        ///</param>
        // POST api/<insertarSolicitud>
        [HttpPost("insertarSolicitud2")]
        public async Task<MensajeRespuesta> InsertSolicitud2(Solicitud Soli)
        {

            reglasFuncion reglas = new reglasFuncion(DBContext);
            try
            {
                Estudiante existeEstu = reglas.existEstudiante(Soli.IdEstu);
                if (existeEstu != null)
                {
                    ActSolicitud existeSol = reglas.validarEstatus(Soli.IdEstu);
                    if (existeSol == null)
                    {
                        var entityS = new Solicitud()
                        {
                            IdEstu = Soli.IdEstu,
                            IdMagia = Soli.IdMagia,
                            Estatus = reglas.validaDatos(existeEstu) ? 3 : 2
                        };

                        DBContext.Solicituds.Add(entityS);
                        await DBContext.SaveChangesAsync();
                        
                        return MensajeResp.estudianteExiste(Soli.IdEstu);
                    }
                    else
                    {
                        return MensajeResp.solsiExiste(Soli.IdEstu);
                    }
                }
                else
                {
                    return MensajeResp.estudianteNoExiste(Soli.IdEstu);

                }
            }
            catch (Exception ex)
            {
                return MensajeResp.errorGen(ex.ToString(), "Insertar");

            }

        }

        ///<summary>
        ///Metodo PUT, que actualiza datos de las tablas solicitudes y estudiante.
        ///</summary>
        ///<return>
        ///Devuelve un mensaje indicando si la inseccion fue correcta.
        ///</return>
        ///<param name="Soli">
        ///Objeto SolicitudDTO, JSON con los parametros; ide, nombre, apellido, edad, idMagia.
        ///</param>
        // PUT api/<EstudianteController>/Solicitud
        [HttpPut("ActualizarSolicitud")]
        public async Task<MensajeRespuesta> ActualizarSolicitud(SolicitudDTO Soli)
        {
            try
            {
                reglasFuncion reglas = new reglasFuncion(DBContext);
                Estudiante existeEstu = reglas.existEstudiante(Soli.Ide);
                if (existeEstu != null)
                {
                    var entity = await DBContext.Estudiantes.FirstOrDefaultAsync(s => s.Ide == Soli.Ide);

                    entity.Nombre = Soli.Nombre;
                    entity.Apellido = Soli.Apellido;
                    entity.Edad = Soli.Edad;

                    await DBContext.SaveChangesAsync();

                    var entitySoli = await DBContext.Solicituds.FirstOrDefaultAsync(s => s.IdEstu == Soli.Ide);
                    entitySoli.IdMagia = Soli.IdMagia;
                    entitySoli.Estatus = reglas.validaDatos(entity) ? 3 : 2;
                    await DBContext.SaveChangesAsync();

                    return MensajeResp.estudianteActualizado(Soli.Ide);
                }
                else
                {
                    return MensajeResp.estudianteNoExiste(Soli.Ide);
                }

            }
            catch(Exception ex)
            {
                return MensajeResp.errorGen(ex.ToString(), "Actualizar");
            }
            
            
        }

        ///<summary>
        ///Metodo PUT, que actualiza el campo estatus de la tabla solicitudes y si es aprobada se asigna grimorio de manera aleatoria.
        ///</summary>
        ///<return>
        ///Devuelve un mensaje indicando si el update fue correcto y devuelve un data con la informacion del grimorio asignado.
        ///</return>
        ///<param name="Soli">
        ///Objeto ActSolicitud, JSON con los parametros; ide, Estatus.
        ///</param>
        // PUT api/<EstudianteController>/Solicitud
        [HttpPut("ActualizarEstatusSol")]
        public async Task<MensajeRespuesta> ActualizarEstatusSol(ActSolicitud Soli)
        {
            try
            {
                reglasFuncion reglas = new reglasFuncion(DBContext);
                Estudiante existeEstu = reglas.existEstudiante(Soli.Ide);
                
                if (existeEstu != null)
                {
                    ActSolicitud existeSol = reglas.validarEstatus(Soli.Ide);
                    if (existeSol != null)
                    {
                        if(existeSol.Estatus != 2)
                        {
                            var entitySoli = await DBContext.Solicituds.FirstOrDefaultAsync(s => s.IdEstu == Soli.Ide);
                            entitySoli.Estatus = Soli.Estatus;
                            await DBContext.SaveChangesAsync();

                            if(Soli.Estatus == 1)//Apobacion de solicitud
                            {
                                Grimorio gri = reglas.asignarGrimorio();
                                var entityG = new Asignaciongrimorio()
                                {
                                    IdEstu = Soli.Ide,
                                    IdGrimorio = gri.IdGrimorio
                                };

                                DBContext.Asignaciongrimorios.Add(entityG);
                                await DBContext.SaveChangesAsync();
                                return MensajeResp.asignacionGri(Soli.Ide, gri);
                            }
                            //Informacion de cambio de estatus de solicitud
                            return MensajeResp.estatusSolicitudOK(Soli.Ide);

                        }
                        else
                        {
                            return MensajeResp.estatusSolRechazado(Soli.Ide);
                        }


                    }
                    else
                    {
                        return MensajeResp.solNoExiste(Soli.Ide);
                    }
                    

                }
                else
                {
                    return MensajeResp.estudianteNoExiste(Soli.Ide);
                }

            }
            catch (Exception ex)
            {
                return MensajeResp.errorGen(ex.ToString(), "Actualizar Estatus");
            }


        }

        ///<summary>
        ///Metodo DELETE, elimina un elemento de la tabla solicitudes.
        ///</summary>
        ///<return>
        ///Devuelve un mensaje indicando si la eliminacion fue correcta.
        ///</return>
        ///<param name="id">
        ///id el id del estudiante.
        ///</param>
        // DELETE api/<EstudianteController>/5
        [HttpDelete("DeleteSolicitud/{id}")]
        public async Task<MensajeRespuesta> Delete(string id)
        {
            try {
                reglasFuncion reglas = new reglasFuncion(DBContext);
                ActSolicitud existeSol = reglas.validarEstatus(id);
                if (existeSol != null) {
                    var entity = new Solicitud()
                    {
                        IdSoli = existeSol.IdSol
                    };
                    DBContext.Solicituds.Attach(entity);
                    DBContext.Solicituds.Remove(entity);
                    await DBContext.SaveChangesAsync();

                    return MensajeResp.estudianteEliminado(id);
                } 
                else
                {
                    return MensajeResp.solNoExiste(id);
                }
                
            }
            catch(Exception ex)
            {
                return MensajeResp.errorGen(ex.ToString(), "Eliminar Solicitud");

            }
           

        }

    }
}
