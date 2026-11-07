<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Catálogo de canciones</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
<h1>Catálogo de canciones – MelodiaPE</h1>

<%-- TODO: enlace "Nueva canción" hacia canciones?action=nuevo --%>

<table>
    <thead>
    <tr>
        <th>Título</th>
        <th>Artista</th>
        <th>Género</th>
        <th>Año</th>
        <th>Duración</th>
        <th>Acciones</th>
    </tr>
    </thead>
    <tbody>
    <%-- TODO: una fila por canción, con el enlace Editar
         (canciones?action=editar&id=X) y, en el Ejercicio 4a, el enlace Eliminar
         (canciones?action=confirmar&id=X) --%>
    </tbody>
</table>

<%-- TODO: "Total de canciones: N" y "Duración total: m:ss" --%>
</body>
</html>
