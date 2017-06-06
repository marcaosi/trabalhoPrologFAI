/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.prologJava.services;

import br.com.prologJava.entity.Materia;
import br.com.prologJava.utils.ConnectionManager;
import br.com.prologJava.utils.PrologWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alunos
 */
public class MateriaService {
    private PrologWriter plWrite = new PrologWriter();

    public void findAllThemes() throws Exception {
        String sql = "SELECT m.* FROM materia m";
        Connection conn = ConnectionManager.getInstance().getConnection();

        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Materia materia = new Materia();
            materia.setNome(rs.getString("nome"));

            plWrite.writePrologFile("materia(" + materia.getNome() + ").");
        }
    }
}
