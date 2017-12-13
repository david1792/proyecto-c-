<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="avanceAcademicoAcudiente.aspx.cs" Inherits="ProyectoICBF.avanceAcademicoAcudiente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/estilosIndex.css" />
    <link rel="stylesheet" href="fonts/style.css" />
    <title>Avance academico acudiente</title>
</head>
<body>
    <div class="estilosNavbar">
        <ul>
            <li><a href="Usuarios.aspx">Inicio</a></li>
        </ul>
    </div>
    <div class="estilosNavbar">
        <form id="form1" runat="server">

            <asp:Label ID="usuarioSesion" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="idSesion" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvAvanceAcademico" runat="server" DataSourceID="LinqDataSource1AvanceAcademicoAcudiente"></asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1AvanceAcademicoAcudiente" runat="server" EntityTypeName="">
            </asp:LinqDataSource>
            <br />
            <asp:Button ID="cerrarSesion" CssClass="btn btn-info" runat="server" Text="cerrar sesions" OnClick="cerrarSesion_Click" />
        </form>
    </div>
</body>
</html>
