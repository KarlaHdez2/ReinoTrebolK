using System;
using System.Collections.Generic;

namespace ReinoTrebolK.Entities;

public partial class Solicitud
{
    public int IdSoli { get; set; }

    public string? IdEstu { get; set; }

    public int? IdMagia { get; set; }

    public int? Estatus { get; set; }
}
