using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AppVazio.View
{
    public partial class Cadastrados : System.Web.UI.Page
    {
        /* inicio configuração SQL server */

        SqlConnection conexao = new SqlConnection(); /* criando conexao */
        SqlCommand comandos = new SqlCommand(); /* Executará os comandos */
        SqlDataAdapter adaptadorSql = new SqlDataAdapter(); /* criando de adaptador para conexao */
        DataTable tabelaDados = new DataTable(); /* TABELA CONTEND DADOS */
        DataSet dataSet = new DataSet(); /* objeto de interação com os dados */
        /* fim configuração SQL Server */


        protected void Page_Load(object sender, EventArgs e)
        {
            /* chave de Connection string, Propriedade Caddeia de Caracteres */
            conexao.ConnectionString = "Data Source=51DE247989\\SENAC;Initial CatalogL = escola;Integrated Security=true";
            conexao.Open();

            dataSet = new DataSet();
            comandos.CommandText = "INSERT INTO aluno(email, senha)VALUES(' " + txbEmail.Text.ToString() + " ', ' " + txbSenha.Text.ToString() + " ')";
            comandos.Connection = conexao;
            adaptadorSql = new SqlDataAdapter(comandos);
            adaptadorSql.Fill(dataSet);
            comandos.ExecuteNonQuery();
            gdvExibir.DataSource = dataSet;
            gdvExibir.DataBind();
            conexao.Close();


        }
    }
}