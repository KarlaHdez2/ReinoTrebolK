using ReinoTrebolK.Entities;
using System.Net;

namespace ReinoTrebolK.DTO
{
    public class MensajeRespuesta
    {
        public HttpStatusCode Code { get; set; }

        public string? Descripcion { get; set; }

        public string? Error { get; set; }

        public Grimorio Data { get; set; }
    }
}
