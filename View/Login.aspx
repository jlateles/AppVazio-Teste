﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="AppVazio.View.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form action="/action_page.php">
  
    <div class="container">
    <h1>Login</h1>
    
    <hr>

    <label for="email"><b>Email</b></label>
    <asp:TextBox ID="txbEmail" placeholder="Digite seu email" runat="server"  />
    <br />
    
    <label for="senha"><b>Password</b></label>
    <asp:TextBox ID="txbSenha" placeholder="Digite sua senha" runat="server" />
    <br />

    <asp:GridView ID="gdvExibir" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
        
    <hr>

    <button type="submit" class="registerbtn">Entrar</button>
  </div>

    <asp:Label ID="lblMensagem" Text="Resposta" runat="server"></asp:Label>
</form>

</asp:Content>
