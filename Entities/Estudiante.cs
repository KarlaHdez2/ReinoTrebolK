using System;
using System.Collections.Generic;

namespace ReinoTrebolK.Entities;

public partial class Estudiante
{
    public int IdEstu { get; set; }

    public string? Nombre { get; set; }

    public string? Apellido { get; set; }

    public int? Edad { get; set; }

    public string? Ide { get; set; }
}
