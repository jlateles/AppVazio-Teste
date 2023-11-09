<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="Cadastrados.aspx.cs" Inherits="AppVazio.View.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <asp:GridView ID="gdvExibir" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>

</asp:Content>
