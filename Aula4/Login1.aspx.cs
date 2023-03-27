using Aula4.Classes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTCadastrar_Click(object sender, EventArgs e)
        {
        bool erroValidacao = false;

        if (TBNome.Text.Equals(""))
        {
            erroValidacao = true;
        }
        else
        {
            if (TBSenha.Text.Equals(""))
            {
                erroValidacao = true;
            }
        }

        if (erroValidacao)
        {
            Response.Write("<script>alert('Erro! Preencha todos os campos!')</script>");
        }
        else
        {
            // Verifica se o usuário existe no banco de dados
            string connectionString = ConfigurationManager.ConnectionStrings["MeuBanco"].ConnectionString;
                using (SQLiteConnection conexao = new SQLiteConnection(connectionString))
                    conexao.Open();
            {
     

                using (SQLiteCommand comando = new SQLiteCommand("SELECT COUNT(*) FROM Usuarios WHERE Email=@Email AND Senha=@Senha", conexao))
                {
                    comando.Parameters.AddWithValue("@Email", TBNome.Text);
                    comando.Parameters.AddWithValue("@Senha", TBSenha.Text);

                  

                    if (count > 0)
                    {
                        // Redireciona para a página de boas-vindas
                        Response.Redirect("Form1.aspx");
                    }
                    else
                    {
                        string mensagem = "Usuário não cadastrado no sistema. Deseja se cadastrar?";
                        string script = "if (confirm('" + mensagem + "')) { window.location.href = 'Cadastro.aspx'; }";
                        Response.Write("<script>" + script + "</script>");
                    }
                }
            }
        }
    }

}
}
