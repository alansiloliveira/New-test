/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author alan-
 */
public class NotasBean {
    
    private int id, matriculaId;
    private float nota_1, nota_2, nota_3, nota_4;
    private MatriculaBean matricula;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMatriculaId() {
        return matriculaId;
    }

    public void setMatriculaId(int matriculaId) {
        this.matriculaId = matriculaId;
    }

    public float getNota_1() {
        return nota_1;
    }

    public void setNota_1(float nota_1) {
        this.nota_1 = nota_1;
    }

    public float getNota_2() {
        return nota_2;
    }

    public void setNota_2(float nota_2) {
        this.nota_2 = nota_2;
    }

    public float getNota_3() {
        return nota_3;
    }

    public void setNota_3(float nota_3) {
        this.nota_3 = nota_3;
    }

    public float getNota_4() {
        return nota_4;
    }

    public void setNota_4(float nota_4) {
        this.nota_4 = nota_4;
    }

    public MatriculaBean getMatricula() {
        return matricula;
    }

    public void setMatricula(MatriculaBean matricula) {
        this.matricula = matricula;
    }
}
