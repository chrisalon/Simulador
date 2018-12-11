package controller;
import include.tipousuario;
import models.modelotipousuario;
import java.util.ArrayList;

public class controladortipousuario {

   public boolean agregartipousuario (tipousuario tipousuario){
        modelotipousuario tipousuario1 = new modelotipousuario();
        return tipousuario1.insertartipousuario(tipousuario);
    }
    public ArrayList<tipousuario> obtenertipousuarios(){
        modelotipousuario tipousuario = new modelotipousuario();
        return tipousuario.obtenertipousuarios();
    }
    public ArrayList<tipousuario> obtenertipousuario(int idtipousuario){
        modelotipousuario tipousuario = new modelotipousuario();
        return tipousuario.obtenertipousuario(idtipousuario);
    }
    public boolean actualizartipousuario(tipousuario tipousuario){
        modelotipousuario tipousuario1 = new modelotipousuario();
        return tipousuario1.actualizartipousuario(tipousuario);
    }
    public boolean eliminartipousuario(int idtipousuario){
        modelotipousuario tipousuario1 = new modelotipousuario();
        return tipousuario1.borrartipousuario(idtipousuario);
    }
     public static void main (String [] args) {

        controladortipousuario cc = new controladortipousuario();
         //System.out.println(cc.agregartipousuario(new tipousuario(7, "ekt", 20)));

        //Listar todos los elementos de la tabla
        /*ArrayList<tipousuario> tipousuarios = new ArrayList<tipousuario>();
        tipousuarios = cc.obtenertipousuarios();

        for (int a = 0; a < tipousuarios.size(); a++) {
            System.out.println("idtipousuario: " + tipousuarios.get(a).getIdtipousuario());
            System.out.println("nombre: " + tipousuarios.get(a).getNombre());
            System.out.println("no_empresas: " + tipousuarios.get(a).getNo_empresas());
            System.out.println();*/

            //Listar un elemento de la tabla por su llave primaria
            ArrayList<tipousuario> tipousuario = new ArrayList<tipousuario>();
            tipousuario = cc.obtenertipousuario(6);

            for (int b = 0; b < tipousuario.size(); b++) {
                System.out.println("idtipousuario: " + tipousuario.get(b).getIdtipousuario());
                System.out.println("nombre: " + tipousuario.get(b).getNombre());
                System.out.println("no_empresas: " + tipousuario.get(b).getNo_empresas());
                System.out.println();
                //Modificar un elemento
                System.out.println(cc.actualizartipousuario(new tipousuario(1, "elg", 50)));
                //Modificar un elemento
                //System.out.println(cc.eliminartipousuario(6));
            }
        }
    }