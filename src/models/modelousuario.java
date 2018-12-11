package models;

import include.usuario;
import java.sql.Date;
import java.sql.PreparedStatement;

public class modelousuario extends conexion {

        public boolean crearusuario(usuario usuario) {
            PreparedStatement pst = null;
            boolean flag = false;
            try {
                String consulta = "insert into usuario" +
                        "(idusuario, usuario, password, last_access, idtipousuario)" +
                        "values(?, ?, ?, ?, ?)";
                pst = getConection().prepareStatement(consulta);
                pst.setInt(1, usuario.getIdusuario());
                pst.setString(2, usuario.getUsuario());
                pst.setString(3, usuario.getPassword());
                pst.setString(4, usuario.getLast_access());
                pst.setInt(5, usuario.getIdtipousuario());

                if (pst.executeUpdate() == 1) {
                    flag = true;
                }
            } catch (Exception ex) {
                System.out.println(ex.getMessage());
            } finally {
                try {
                    if (getConection() != null) getConection().close();
                    if (pst != null) pst.close();
                } catch (Exception e){

                }
            }return flag;
        }
    }