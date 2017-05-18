/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prologjava;

/**
 *
 * @author Alunos
 */
public class Nota extends Base {
    private Double nota;
    private Long bimestre;
    private Materia materia;

    public Double getNota() {
        return nota;
    }

    public void setNota(Double nota) {
        this.nota = nota;
    }

    public Long getBimestre() {
        return bimestre;
    }

    public void setBimestre(Long bimestre) {
        this.bimestre = bimestre;
    }

    public Materia getMateria() {
        return materia;
    }

    public void setMateria(Materia materia) {
        this.materia = materia;
    }
    
}
