package br.com.etechoracio.blog.repository;

import br.com.etechoracio.blog.entity.Comentario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ComentarioRepository  extends JpaRepository<Comentario, Long> {

}
