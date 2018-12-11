<%@page contentType="text/html;charset=UTF-8" language="java"%>
<jsp:include page='views/header.jsp'></jsp:include>

<div class="container">
    <form class="col s12" action="/crearusuario" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Insertar un nuevo usuario</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="idusuario" name="idusuario" type="text" value="">
                <label for="idusuario" class="center-align">Idusuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="usuario" name="usuario" type="text" value="">
                <label for="usuario" class="center-align">Usuario</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="password" name="password" type="text" value="">
                <label for="password" class="center-align">Password</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="last_access" name="last_access" type="text" value="">
                <label for="last_access" class="center-align">Last_access</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="tipousuario_idusuario" name="tipousuario_idusuario" type="text" value="" >
                <label for="tipousuario_idusuario" class="center-align">idtipousuario</label>
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
                <a class="btn col s6" href="usuarios.jsp">Regresar</a>
            </div>
            <div class="col s2">

            </div>
        </div>
    </form>
</div>

<jsp:include page='views/footer.jsp'></jsp:include>