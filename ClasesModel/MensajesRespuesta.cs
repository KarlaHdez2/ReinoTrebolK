using ReinoTrebolK.DTO;
using ReinoTrebolK.Entities;
using System.Net;

namespace ReinoTrebolK.ClasesModel
{
    ///<summary>
    ///Clase de Mensajes de Respuesta.
    ///</summary>
    ///<remarks>
    ///Metodos que arma los mensajes Exitosos/Error de salida.
    ///</remarks>
    public class MensajesRespuesta
    {
        ///<summary>
        ///Arma el mensaje de salida cuando se tienen solicitudes en BD.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP, Descripcion y el DataList que contiene los registro de solicitudes.
        ///</return>
        ///<param name="data">
        ///Lista con las solicitudes en BD
        ///</param>
        public MensajeRespuesta dataSoliOK(List<SolicitudesDTO> data)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "Se tiene "+data.Count.ToString()+" solicitudes",
                DataList = data
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida de la lista de solicitudes
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP, Descripcion y el Data vacio.
        ///</return>
        ///<param name="data">
        ///Lista del reporte vacio
        ///</param>
        public MensajeRespuesta dataSoliVacio(List<SolicitudesDTO> data)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "No hay solicitudes",
                DataList = data
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida cuando se tienen asignaciones en BD.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP, Descripcion y el DataList que contiene los registro de asignaciones.
        ///</return>
        ///<param name="data">
        ///Lista con las asignaciones en BD
        ///</param>
        public MensajeRespuesta dataAsigOK(List<AsignacionesG> data)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "Se tiene " + data.Count.ToString() + " solicitudes",
                DataListG = data
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida de la lista de asignaciones
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP, Descripcion y el Data vacio.
        ///</return>
        ///<param name="data">
        ///Lista de asignaciones vacio
        ///</param>
        public MensajeRespuesta dataAsigVacio(List<AsignacionesG> data)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "No hay solicitudes",
                DataListG = data
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida en caso de que el estudiante ya exista.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta estudianteExiste(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "El estudiante con IDE " + ide + " YA EXISTE, solo se agrego la solicitud."
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida cuando se registra estudiante por primera vez.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta estudianteRegistrado(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "El estudiante con IDE " + ide + " Se registro con EXITO"
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida cuando el estudiante NO EXISTE.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta estudianteNoExiste(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.NotFound,
                Descripcion = "El estudiante con IDE " + ide + " NO EXISTE"
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida cuando la solicitud NO EXISTE.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta solNoExiste(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.NotFound,
                Descripcion = "La solicitud del estudiante con IDE" + ide + " NO EXISTE"
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida cuando solicitud ya existe.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta solsiExiste(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "La solicitud del estudiante con IDE: " + ide + " YA EXISTE, si requiere modificarla ir a la opcion Actualizar solicitud"
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida cuando se realiza cambio de estatus de solicitud.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta estatusSolicitudOK(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "El estudiante con IDE " + ide + " Se aprobo/rechazo correctamente"
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida que se usa cuando se intenta modificar el estatus Rechazado.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta estatusSolRechazado(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "No se puede modificar el estatus de la solicitud del estudiante con IDE " + ide + " porque anteriormente YA fue RECHAZADA"
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida que se usa cuando se actualiza solicitud de estudiante.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta estudianteActualizado(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "El estudiante con IDE " + ide + " Se actualizo con EXITO"
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida que se usa cuando se asigna Grimorio exitosamente.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP, Descripcion y Data que es un JSON Grimorio.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        ///<param name="gri">
        ///Objeto Grimorio
        ///</param>
        public MensajeRespuesta asignacionGri(string ide, Grimorio gri)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "El estudiante con IDE " + ide + " se le asigno Grimorio",
                Data = gri
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida que se usa cuando se genera error al actualizar Estatus de solicitud.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP, Descripcion y error que es la excepcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        ///<param name="error">
        ///String cadena de con el mensaje de error
        ///</param>
        public MensajeRespuesta errorEstuActualizado(string ide, string error)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "Ocurrio un error al actualizar el estudiante con IDE: " + ide,
                Error = error
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida cuando se elimina una solicitud.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP y Descripcion.
        ///</return>
        ///<param name="ide">
        ///Id de estudiante
        ///</param>
        public MensajeRespuesta estudianteEliminado(string ide)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "Se Elimino la solicitud del estudiante con IDE: " + ide,
            };
            return mensaje;

        }

        ///<summary>
        ///Arma el mensaje de salida que se usa cuando se genera un error generico.
        ///</summary>
        ///<return>
        ///Devuelve un objeto tipo Mensaje Respuesta, que contiene elementos como; Codigo HTTP, Descripcion y error que es la excepcion.
        ///</return>
        ///<param name="ex">
        ///Ex excepcion en string
        ///</param>
        ///<param name="fun">
        ///String nombre de la funcion que genero el error
        ///</param>
        public MensajeRespuesta errorGen(string ex, string fun)
        {
            var mensaje = new MensajeRespuesta()
            {
                Code = HttpStatusCode.OK,
                Descripcion = "Ocurrio un Error, Fun: "+fun,
                Error = ex
            };
            return mensaje;

        }
    }
}
