import { Component, OnInit } from '@angular/core';
import { CursoService } from '../../services/curso.service';
import { Curso } from '../../models/curso.model';

@Component({
  selector: 'app-curso',
  templateUrl: './curso.component.html',
  styleUrls: ['./curso.component.css']
})
export class CursoComponent implements OnInit {

  cursos: Curso[] = [];

  coresArea: { [key: string]: string } = {
    BACKEND: 'bg-blue-500',
    FRONTEND: 'bg-green-500',
    DATA_SCIENCE: 'bg-purple-500',
    SEGURANCA_DA_INFORMACAO: 'bg-red-500'
  };

  constructor(private cursoService: CursoService) { }

  ngOnInit(): void {
    this.listarCursos();
  }

  listarCursos(): void {
    this.cursoService.listarCursos().subscribe(data => {
      this.cursos = data;
    });
  }

  toggleFavorito(curso: Curso): void {
    curso.favorito = !curso.favorito;
    if (curso.id) {
      this.cursoService.atualizarCurso(curso.id, curso).subscribe();
    }
  }

  deletarCurso(id?: number): void {
    if (id) {
      this.cursoService.deletarCurso(id).subscribe(() => {
        this.listarCursos();
      });
    }
  }
}

