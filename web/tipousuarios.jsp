<jsp:include page='views/header.jsp'></jsp:include>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="include.tipousuario" %>
<%@ page import="controller.controladortipousuario" %>
<%@ page import="java.util.ArrayList" %>

<div class="container">
    <div class="row">
        <div class="input-field col s12 center">
            <h3>Tipo de Usuarios</h3>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <a class="btn cyan" href="a_tipousuario.jsp">Nuevo</a>
            </div>
        </div>
        <div class="row margin">
            <div class="col s12 center">
                <table class="striped">
                    <thead>
                    <tr>
                        <th>ID_TIPOUSUARIO</th>
                        <th>NOMBRE</th>
                        <th>NO_EMPRESAS</th>
                    </tr>
                    </thead>
<%
        String htmlcode = "<tbody>";
        controladortipousuario cc = new controladortipousuario();
        int contador = 0;
        ArrayList<tipousuario> tipousuarios = new ArrayList<tipousuario>();
        tipousuarios = cc.obtenertipousuarios();
        if(tipousuarios.size() > 0){
            for(int a=0; a<tipousuarios.size();a++){
                htmlcode += "<tr><td>" + tipousuarios.get(a).getIdtipousuario()
                        + "</td><td>" + tipousuarios.get(a).getNombre()
                        + "</td><td>" + tipousuarios.get(a).getNo_empresas()
                        + "<td><a class=\"btn\" href=\"#\"><i class=\"material-icons\">zoom_in</i></a>"
                        + "<a class=\"btn blue\" href=\"#\"><i class=\"material-icons\">create</i></a>"
                        + "<a class=\"btn red\" href=\"#\"><i class=\"material-icons\">delete</i></a>"
                        + "</td></tr>";
            }
            } else{
                        htmlcode += "<tr><td colspan=\"10\">No existen tipos de usuarios</td></tr>";
                    }
                    htmlcode += "</tbody>";

                    out.print(htmlcode);
                %>
                </table>
            </div>
        </div>
    </div>
    <jsp:include page='views/footer.jsp'></jsp:include>
