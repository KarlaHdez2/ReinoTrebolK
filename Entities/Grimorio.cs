using System;
using System.Collections.Generic;

namespace ReinoTrebolK.Entities;

public partial class Grimorio
{
    public int IdGrimorio { get; set; }

    public string? Descripcion { get; set; }

    public int? TipoTrebol { get; set; }
}
