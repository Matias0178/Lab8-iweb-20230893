<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Canción</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
<%-- TODO: título distinto para crear y para editar --%>
<h1>Canción</h1>

<%-- TODO: mostrar aquí el mensaje de error de validación (si existe) --%>

<form method="post" action="canciones">
    <%-- TODO: campos ocultos action (crear o actualizar) e id (solo al editar) --%>

    <label>Título:</label>
    <input type="text" name="titulo"><br>

    <label>Artista:</label>
    <input type="text" name="artista"><br>

    <label>Duración (segundos):</label>
    <input type="text" name="duracion"><br>

    <label>Año:</label>
    <input type="text" name="anio"><br>

    <label for="idgenero">Género:</label>
    <select name="idgenero" id="idgenero">
        <%-- TODO: una opción por cada género; al editar, el género actual debe quedar seleccionado --%>
    </select><br>

    <%-- TODO: al editar o al fallar la validación, los campos deben mostrar los valores actuales --%>

    <button type="submit">Guardar</button>
    <a href="canciones">Cancelar</a>
</form>
</body>
</html>
