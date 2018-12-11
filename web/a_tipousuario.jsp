<%@page contentType="text/html;charset=UTF-8" language="java"%>
<jsp:include page='views/header.jsp'></jsp:include>

<div class="container">
    <form class="col s12" action="/creartipousuario" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Insertar un nuevo tipo de usuario</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idtipousuario" name="idtipousuario" type="text" value="">
                <label for="idtipousuario" class="center-align">Id_tipousuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="nombre" name="nombre" type="text" value="">
                <label for="nombre" class="center-align">Nombre</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="no_empresas" name="no_empresas" type="text" value="">
                <label for="no_empresas" class="center-align">No_empresas</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>

        </div>
        <div class="row margin">
            <div class="col s2">

            </div>

        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">

            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input type="submit" value="Insertar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s6 gradient-45deg-red-pink" >
                <a class="btn col s6" href="tipousuarios.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>

<jsp:include page='views/footer.jsp'></jsp:include>