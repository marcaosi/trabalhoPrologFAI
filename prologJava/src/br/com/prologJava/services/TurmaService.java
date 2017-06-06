/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.prologJava.services;

import br.com.prologJava.entity.Turma;
import br.com.prologJava.utils.ConnectionManager;
import br.com.prologJava.utils.PrologWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alunos
 */
public class TurmaService {

    private PrologWriter plWrite = new PrologWriter();

    public void findAllClasses() throws Exception {
        String sql = "SELECT t.* FROM turma t";
        Connection conn = ConnectionManager.getInstance().getConnection();

        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Turma turma = new Turma();
            turma.setCodigo(rs.getLong("codigo"));
            turma.setNome(rs.getString("nome"));

            plWrite.writePrologFile("turma(" + turma.getNome() + ").");
            plWrite.writePrologFile("codigo(" + turma.getNome() + ", " + turma.getCodigo() + ").");

        }
    }
}
