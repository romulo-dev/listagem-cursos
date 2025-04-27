package com.example.listagem_cursos.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "cursos")
@Data
public class Curso {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titulo;

    @Enumerated(EnumType.STRING)
    @Column(name = "area_conhecimento")
    private AreaConhecimento areaConhecimento;

    private String fotoUrl;

    private Boolean favorito = false;
}
