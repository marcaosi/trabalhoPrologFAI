/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prologjava;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alunos
 */
public class PrologJava {
    List<Aluno> alunoList = new ArrayList<>();
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        PrologJava o = new PrologJava();
        o.execute();
    }
    
    public void execute() throws SQLException, Exception{
        String sql = "SELECT a.*, n.nota, n.bimestre, m.nome materia, t.codigo, t.nome turma"
                + " FROM aluno a"
                + " JOIN nota n ON a.id = n.aluno_fk"
                + " JOIN materia m ON m.id = n.materia_fk"
                + " JOIN turma t ON t.id = a.turma_fk"
                + " JOIN turma_professor tp ON tp.turma_fk = t.id"
                + " JOIN professor p ON p.id = tp.professor_fk";
        Connection conn = ConnectionManager.getInstance().getConnection();
        
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            Aluno aluno = new Aluno();
            aluno.setId(rs.getLong("id"));
            aluno.setNome(rs.getString("nome"));
            aluno.setMatricula(rs.getLong("matricula"));
            
            Turma turma = new Turma();
            turma.setNome(rs.getString("turma"));
            turma.setCodigo(rs.getLong("codigo"));
            turma.setId(rs.getLong("turma_fk"));
            
            aluno.setTurma(turma);
            
            if(aluno.getNotaList() == null){
                aluno.setNotaList(new ArrayList<>());
            }
            
            Nota nota = new Nota();
            nota.setBimestre(rs.getLong("bimestre"));
            nota.setNota(rs.getDouble("nota"));
            
            Materia materia = new Materia();
            materia.setNome(rs.getString("materia"));
            
            nota.setMateria(materia);
            
            if(alunoList.isEmpty()){
                alunoList.add(aluno);
            }
            
            Aluno lastAluno = alunoList.get(alunoList.size()-1);
            
            if(lastAluno.getId() == aluno.getId()){
                lastAluno.getNotaList().add(nota);
            }else{
                aluno.getNotaList().add(nota);
                alunoList.add(aluno);
            }
            
            Professor professor = new Professor();
            professor.setNome(rs.getString("nome"));
            professor.setEmail(rs.getString("email"));
        }
    }
    
}
