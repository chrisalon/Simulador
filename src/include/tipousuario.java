package include;

public class tipousuario {
    private int idtipousuario;
    private String nombre;
    private int no_empresas;

    public tipousuario(int idtipousuario, String nombre, int no_empresas) {
        this.idtipousuario = idtipousuario;
        this.nombre = nombre;
        this.no_empresas = no_empresas;

    }

    public int getIdtipousuario() {
        return idtipousuario;
    }

    public void setIdtipousuario(int idtipousuario) {
        this.idtipousuario = idtipousuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNo_empresas() {
        return no_empresas;
    }

    public void setNo_empresas(int no_empresas) {
        this.no_empresas = no_empresas;
    }
}
