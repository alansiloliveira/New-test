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
public class MatriculaBean {
    
    private int id, pessoaId, turmaId;
    private String matricula, dataMatricula, dataInativo;
    private PessoaBean pessoa;
    private TurmaBean turma;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPessoaId() {
        return pessoaId;
    }

    public void setPessoaId(int pessoaId) {
        this.pessoaId = pessoaId;
    }

    public int getTurmaId() {
        return turmaId;
    }

    public void setTurmaId(int turmaId) {
        this.turmaId = turmaId;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getDataMatricula() {
        return dataMatricula;
    }

    public void setDataMatricula(String dataMatricula) {
        this.dataMatricula = dataMatricula;
    }

    public String getDataInativo() {
        return dataInativo;
    }

    public void setDataInativo(String dataInativo) {
        this.dataInativo = dataInativo;
    }

    public PessoaBean getPessoa() {
        return pessoa;
    }

    public void setPessoa(PessoaBean pessoa) {
        this.pessoa = pessoa;
    }

    public TurmaBean getTurma() {
        return turma;
    }

    public void setTurma(TurmaBean turma) {
        this.turma = turma;
    }
    
}
