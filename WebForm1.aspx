<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AppVazio.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <form action="/action_page.php">
  
    <div class="container">
    <h1>Cadastra-se</h1>
        <p>Cadastrar</p>
    
    <hr>

    <label for="email"><b>Email</b></label>
    <asp:TextBox ID="txbEmail" placeholder="Digite seu email" runat="server"  />
    <br />
    
      <label for="senha"><b>Password</b></label>
    <asp:TextBox ID="txbSenha" placeholder="Digite sua senha" runat="server" />
    <br />
    
    <label for="senhaRepete"><b>Confirme sua senha</b></label>
    <asp:TextBox ID="senhaRepete" placeholder="Confirme sua senha" runat="server" />
    <br />

        <asp:GridView ID="gdvExibir" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
        
    
    <hr>
    <p>Criando uma conta você concorda com nossos<a href="#">Termos & Privacidade</a>.</p>

        <asp:Button ID="btnEnviar" runat="server" Text="Button" OnClick="btnEnviar_Click()" />

  </div>

    <asp:Label ID="lblMensagem" Text="Resposta" runat="server"></asp:Label>
  
  <div class="container signin">
    <p>Já tem uma conta? <a href="#">Entre aqui</a>.</p>
  </div>
</form>

</asp:Content>
