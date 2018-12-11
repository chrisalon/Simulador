package include;

import java.util.Date;

public class usuario {
    private int idusuario;
    private String usuario;
    private String password;
    private String  last_access;
    private int idtipousuario;

    public usuario(int idusuario, String usuario, String password, String last_access, int idtipousuario) {
        this.idusuario = idusuario;
        this.usuario = usuario;
        this.password = password;
        this.last_access = last_access;
        this.idtipousuario = idtipousuario;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLast_access() {
        return last_access;
    }

    public void setLast_access(String last_access) {
        this.last_access = last_access;
    }

    public int getIdtipousuario() {
        return idtipousuario;
    }

    public void setIdtipousuario(int idtipousuario) {
        this.idtipousuario = idtipousuario;
    }
}

