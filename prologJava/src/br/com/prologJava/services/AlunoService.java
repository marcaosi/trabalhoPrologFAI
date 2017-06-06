package br.com.prologJava.services;

import br.com.prologJava.entity.Aluno;
import br.com.prologJava.utils.ConnectionManager;
import br.com.prologJava.utils.PrologWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AlunoService {
    
    private PrologWriter plWrite = new PrologWriter();
    
    public void findAllStudents() throws Exception {
        String sql = "SELECT a.* FROM aluno a";
        Connection conn = ConnectionManager.getInstance().getConnection();
        
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Aluno aluno = new Aluno();
            aluno.setMatricula(rs.getLong("matricula"));
            aluno.setNome(rs.getString("nome"));
            
            plWrite.writePrologFile("aluno(" + aluno.getNome() + ").");
            plWrite.writePrologFile("matricula(" + aluno.getNome() + ", " + aluno.getMatricula() + ").");
        }
    }
    
}
