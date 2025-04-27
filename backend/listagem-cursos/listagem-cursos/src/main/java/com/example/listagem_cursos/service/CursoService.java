package com.example.listagem_cursos.service;



import com.seuprojeto.cursos.model.Curso;
import com.seuprojeto.cursos.repository.CursoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CursoService {

    @Autowired
    private CursoRepository cursoRepository;

    public List<Curso> listarTodos() {
        return cursoRepository.findAll();
    }

    public Optional<Curso> buscarPorId(Long id) {
        return cursoRepository.findById(id);
    }

    public Curso salvar(Curso curso) {
        return cursoRepository.save(curso);
    }

    public Curso atualizar(Long id, Curso cursoAtualizado) {
        Curso curso = cursoRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Curso não encontrado"));

        curso.setTitulo(cursoAtualizado.getTitulo());
        curso.setAreaConhecimento(cursoAtualizado.getAreaConhecimento());
        curso.setFotoUrl(cursoAtualizado.getFotoUrl());
        curso.setFavorito(cursoAtualizado.getFavorito());

        return cursoRepository.save(curso);
    }

    public void deletar(Long id) {
        cursoRepository.deleteById(id);
    }
}

