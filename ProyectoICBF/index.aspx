<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectoICBF.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Login ID="Login1" runat="server" FailureText="El usuario no existe o esta desactivado, contacte al admin" OnAuthenticate="Login1_Authenticate"></asp:Login>
        </div>
    </form>
</body>
</html>
