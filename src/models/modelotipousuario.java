 package models;

import include.tipousuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

 public class modelotipousuario extends conexion {

    public boolean insertartipousuario(tipousuario tipousuario) {
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "insert into tipousuario" +
                    "(idtipousuario, nombre, no_empresas)" +
                    "values(?,?,?)";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, tipousuario.getIdtipousuario());
            pst.setString(2, tipousuario.getNombre());
            pst.setInt(3, tipousuario.getNo_empresas());

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
        }
        return flag;
    }
    public ArrayList<tipousuario> obtenertipousuarios() {
        ArrayList<tipousuario> tipousuarios = new ArrayList<tipousuario>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idtipousuario, nombre,no_empresas " + "FROM tipousuario ";
            pst = getConection().prepareCall(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                tipousuarios.add(new tipousuario(rs.getInt("idtipousuario"),
                        rs.getString("nombre"),
                        rs.getInt("no_empresas")));

            }
        }catch (Exception e) {
        }finally {
            try{
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {
            }
        }
        return tipousuarios;
    }
    public ArrayList<tipousuario> obtenertipousuario(int idtipousuario){
        ArrayList<tipousuario> tipousuario = new ArrayList<tipousuario>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consulta = "SELECT idtipousuario, nombre,no_empresas " + "FROM tipousuario WHERE idtipousuario = ?";

            pst = getConection().prepareCall(consulta);
            pst.setInt(1, idtipousuario);
            rs = pst.executeQuery();
            while (rs.next()) {
                tipousuario.add(new tipousuario(rs.getInt("idtipousuario"),
                        rs.getString("nombre"),
                        rs.getInt("no_empresas")));
            }
        }catch(Exception e) {
            System.out.println(e.getMessage());
        }finally{
            try {
                if(getConection() != null)getConection().close();
                if(pst != null)pst.close();
                if(rs !=null)rs.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return tipousuario;
    }
    public boolean actualizartipousuario(tipousuario tipousuario){
        PreparedStatement pst = null;
        boolean flag = false;
        try {
            String consulta = "UPDATE tipousuario SET idtipousuario = ?, " +
                    "nombre = ?, no_empresas = ?, " +" WHERE idtipousuario = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1,tipousuario.getIdtipousuario());
            pst.setString(2,tipousuario.getNombre());
            pst.setInt(3,tipousuario.getNo_empresas());
            //pst.setInt(4,tipousuario.getIdtipousuario());
            if(pst.executeUpdate() == 1){
                flag = true;
            }
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception a) {
                System.out.println(a.getMessage());
            }
        }
        return flag;
    }
    public boolean borrartipousuario(int idtipousuario){
        PreparedStatement pst = null;
        boolean flag = false;
        try{
            String consulta = "DELETE FROM tipousuario WHERE idtipousuario = ?";
            pst = getConection().prepareStatement(consulta);
            pst.setInt(1, idtipousuario);

            if(pst.executeUpdate() == 1){
                flag = true;
            }
        } catch (Exception ex){
            System.out.println(ex.getMessage());
        } finally {
            try {
                if (getConection() != null) getConection().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }
        return flag;
    }
}
