using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using ReinoTrebolK.DTO;

namespace ReinoTrebolK.Entities;

public partial class ReinotrebolContext : DbContext
{
    public ReinotrebolContext()
    {
    }

    public ReinotrebolContext(DbContextOptions<ReinotrebolContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Asignaciongrimorio> Asignaciongrimorios { get; set; }

    public virtual DbSet<Estatus> Estatuses { get; set; }

    public virtual DbSet<Estudiante> Estudiantes { get; set; }

    public virtual DbSet<Grimorio> Grimorios { get; set; }

    public virtual DbSet<Magium> Magia { get; set; }

    public virtual DbSet<Solicitud> Solicituds { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    { }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Asignaciongrimorio>(entity =>
        {
            entity.HasKey(e => e.IdAsig).HasName("PRIMARY");

            entity.ToTable("asignaciongrimorio");

            entity.Property(e => e.IdAsig).HasColumnName("idAsig");
            entity.Property(e => e.IdEstu)
                .HasMaxLength(25)
                .HasColumnName("idEstu");
            entity.Property(e => e.IdGrimorio).HasColumnName("idGrimorio");
        });

        modelBuilder.Entity<Estatus>(entity =>
        {
            entity.HasKey(e => e.IdEstatus).HasName("PRIMARY");

            entity.ToTable("estatus");

            entity.Property(e => e.IdEstatus).HasColumnName("idEstatus");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(45)
                .HasColumnName("descripcion");
        });

        modelBuilder.Entity<Estudiante>(entity =>
        {
            entity.HasKey(e => e.IdEstu).HasName("PRIMARY");

            entity.ToTable("estudiante");

            entity.Property(e => e.IdEstu).HasColumnName("idEstu");
            entity.Property(e => e.Apellido)
                .HasMaxLength(45)
                .HasColumnName("apellido");
            entity.Property(e => e.Edad).HasColumnName("edad");
            entity.Property(e => e.Ide)
                .HasMaxLength(45)
                .HasColumnName("ide");
            entity.Property(e => e.Nombre)
                .HasMaxLength(45)
                .HasColumnName("nombre");
        });

        modelBuilder.Entity<Grimorio>(entity =>
        {
            entity.HasKey(e => e.IdGrimorio).HasName("PRIMARY");

            entity.ToTable("grimorio");

            entity.Property(e => e.IdGrimorio).HasColumnName("idGrimorio");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(45)
                .HasColumnName("descripcion");
            entity.Property(e => e.TipoTrebol).HasColumnName("tipoTrebol");
        });

        modelBuilder.Entity<Magium>(entity =>
        {
            entity.HasKey(e => e.IdMagia).HasName("PRIMARY");

            entity.ToTable("magia");

            entity.Property(e => e.IdMagia).HasColumnName("idMagia");
            entity.Property(e => e.Descripcion)
                .HasMaxLength(45)
                .HasColumnName("descripcion");
        });

        modelBuilder.Entity<Solicitud>(entity =>
        {
            entity.HasKey(e => e.IdSoli).HasName("PRIMARY");

            entity.ToTable("solicitud");

            entity.Property(e => e.IdSoli).HasColumnName("idSoli");
            entity.Property(e => e.Estatus).HasColumnName("estatus");
            entity.Property(e => e.IdEstu).HasColumnName("idEstu");
            entity.Property(e => e.IdMagia).HasColumnName("idMagia");
        });

        modelBuilder.Entity<SolicitudesDTO>().HasNoKey();
        modelBuilder.Entity<AsignacionesG>().HasNoKey();

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
