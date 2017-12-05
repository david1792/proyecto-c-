<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reportes.aspx.cs" Inherits="ProyectoICBF.reportes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:GridView ID="gvAsistencia" runat="server"></asp:GridView>
        <br />
        <asp:GridView ID="gvInasistenciaEnfermedad" runat="server"></asp:GridView>
        <br />
        <asp:GridView ID="gvNinosJardin" runat="server"></asp:GridView>
        <br />
        <asp:GridView ID="gvJardinesDesaprobado" runat="server"></asp:GridView>
        <br />
        </div>
    </form>
</body>
</html>
