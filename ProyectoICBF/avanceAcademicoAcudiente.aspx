<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="avanceAcademicoAcudiente.aspx.cs" Inherits="ProyectoICBF.avanceAcademicoAcudiente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvAvanceAcademico" runat="server" DataSourceID="LinqDataSource1AvanceAcademicoAcudiente"></asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1AvanceAcademicoAcudiente" runat="server" EntityTypeName="">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
