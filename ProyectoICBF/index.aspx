<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectoICBF.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/estilosIndex.css" />
    <title></title>
</head>
<body>
    <div>

        <div class="estilosNavbar">
            <ul>
                <li><a href="Usuarios.aspx"></a></li>
                <li><a href="jardin.aspx"></a></li>
                <li><a href="ninos.aspx"></a></li>
                <li><a href="Usuarios.aspx"></a></li>
                <li><a href="jardin.aspx"></a></li>
                <li><a href="ninos.aspx"></a></li>
                <li><a href="Usuarios.aspx"></a></li>
                <li><a href="jardin.aspx"></a></li>
                <li><a href="ninos.aspx"></a></li>
                <li><a href="Usuarios.aspx"></a></li>
                <li><a href="jardin.aspx"></a></li>
                <li><a href="ninos.aspx"></a></li>
                <li><a href="Usuarios.aspx"></a></li>
                <li><a href="jardin.aspx"></a></li>
                <li><a href="ninos.aspx"></a></li>
                <li><a href="Usuarios.aspx"></a></li>
                <li><a href="jardin.aspx"></a></li>
                <li><a href="ninos.aspx"></a></li>
                <li><a href="Usuarios.aspx"></a></li>
                <li><a href="jardin.aspx"></a></li>
                <li><a href="ninos.aspx"></a></li>

            </ul>

        </div>
        <form id="form1" runat="server">
            <div>
                <asp:Login ID="Login1" runat="server" FailureText="El usuario no existe o esta desactivado, contacte al admin" OnAuthenticate="Login1_Authenticate"></asp:Login>
            </div>
        </form>
    </div>
</body>
</html>
