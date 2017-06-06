/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.prologJava.services;

import br.com.prologJava.entity.Professor;
import br.com.prologJava.utils.ConnectionManager;
import br.com.prologJava.utils.PrologWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alunos
 */
public class ProfessorService {

    private PrologWriter plWrite = new PrologWriter();

    public void findAllTeachers() throws Exception {
        String sql = "SELECT p.* FROM professor p";
        Connection conn = ConnectionManager.getInstance().getConnection();

        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Professor professor = new Professor();
            professor.setEmail(rs.getString("email"));
            professor.setNome(rs.getString("nome"));

            plWrite.writePrologFile("professor(" + professor.getId() + ", " + professor.getNome() + ").");
            plWrite.writePrologFile("email(" + professor.getNome() + ", " + professor.getEmail() + ").");
            
        }
    }
}
