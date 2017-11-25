<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="listarAvanceAcademico.aspx.cs" Inherits="ProyectoICBF.listarAvanceAcademico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper">
        
        <div class="col-md-6">
            <asp:Label ID="lbNoRegistro" runat="server" Text="Numero de registro"></asp:Label>
            <asp:TextBox ID="tbNoRegistro" runat="server"></asp:TextBox>

            <asp:Label ID="lbIdNino" runat="server" Text="niño"></asp:Label>
            <asp:TextBox ID="tbNIdNino" runat="server"></asp:TextBox>

             <asp:Label ID="lbAnioEscolar" runat="server" Text="Año escolar"></asp:Label>
            <asp:TextBox ID="tbAnioEscolar" runat="server"></asp:TextBox>

            <asp:Label ID="lbNivel" runat="server" Text="Nivel"></asp:Label>
            <asp:TextBox ID="tbNivel" runat="server"></asp:TextBox>

            <asp:Label ID="lbNota" runat="server" Text="Nota"></asp:Label>
            <asp:TextBox ID="tbNota" runat="server"></asp:TextBox>

            <asp:Label ID="lbDescripcion" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox ID="tbDescripcion" runat="server"></asp:TextBox>

            <asp:Label ID="lbFechaCalificacion" runat="server" Text="Fecha de calificacion"></asp:Label>
            <asp:TextBox ID="tbFechaCalificacion" runat="server"></asp:TextBox>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1ListarAvanceAcademico">
            <Columns>
                <asp:BoundField DataField="noRegsitro" HeaderText="noRegsitro" ReadOnly="True" SortExpression="noRegsitro" />
                <asp:BoundField DataField="anioEscolar" HeaderText="anioEscolar" ReadOnly="True" SortExpression="anioEscolar" />
                <asp:BoundField DataField="nivel" HeaderText="nivel" ReadOnly="True" SortExpression="nivel" />
                <asp:BoundField DataField="nota" HeaderText="nota" ReadOnly="True" SortExpression="nota" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" ReadOnly="True" SortExpression="descripcion" />
                <asp:BoundField DataField="fechaCalificacion" HeaderText="fechaCalificacion" ReadOnly="True" SortExpression="fechaCalificacion" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1ListarAvanceAcademico" runat="server" ContextTypeName="Modelo.DataClasses1DataContext" EntityTypeName="" Select="new (nino, noRegsitro, anioEscolar, nivel, nota, descripcion, fechaCalificacion)" TableName="avanceAcademicos">
        </asp:LinqDataSource>
    </div>
</asp:Content>
