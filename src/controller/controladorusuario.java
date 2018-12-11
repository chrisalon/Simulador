package controller;

import include.usuario;
import models.modelousuario;

public class controladorusuario {


    public boolean agregarusuario (usuario usuario){
        modelousuario usuario1 = new modelousuario();
        return usuario1.crearusuario(usuario);
    }

    public static void main (String [] args){

        controladorusuario cc=new controladorusuario();
        //System.out.println(cc.agregarusuario(new usuario(1,"nose","nose", 12-11-08,5 )));
    }
}

