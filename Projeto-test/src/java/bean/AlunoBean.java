package bean;

/**
 *
 * @author alan-
 */
public class AlunoBean extends PessoaBean{
    
    private int id, idPessoa, idMatricula;

    public int getIdMatricula() {
        return idMatricula;
    }

    public void setIdMatricula(int idMatricula) {
        this.idMatricula = idMatricula;
    }

    public MatriculaBean getMatricula() {
        return matricula;
    }

    public void setMatricula(MatriculaBean matricula) {
        this.matricula = matricula;
    }
    private MatriculaBean matricula;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(int idPessoa) {
        this.idPessoa = idPessoa;
    }

  
    
}
