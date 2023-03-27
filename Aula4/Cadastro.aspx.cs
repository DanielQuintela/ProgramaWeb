using Aula4.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Aula4
{
    public partial class Cadastro : System.Web.UI.Page
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
                if (TBCPF.Equals("") || TBCPF.Text.Length < 11)
                {
                    erroValidacao = true;
                }
                else
                {
                    if (CLDataNasc.SelectedDate.CompareTo(DateTime.Now) > 0)
                    {
                        erroValidacao = true;
                    }
                    else
                    {
                        if (TBEndereco.Text.Equals(""))
                        {
                            erroValidacao = true;
                        }
                        else
                        {
                            if (TBEmail.Equals(""))
                            {
                                erroValidacao = true;
                            }
                            else
                            {
                                if (TBSenha.Equals(""))
                                {
                                    erroValidacao = true;
                                }
                            }
                        }

                    }
                }
            }

            if (erroValidacao)
            {
                Response.Write("<script>alert('Erro! Preencha todos os campos!')</script>");
            }
            else
            {
                // Cria um novo objeto Usuario e preenche suas propriedades com os valores dos campos do formulário
                Usuario novoUsuario = new Usuario();
                novoUsuario.Nome = TBNome.Text;
                novoUsuario.CPF = TBCPF.Text;
                novoUsuario.DataNascimento = CLDataNasc.SelectedDate;
                novoUsuario.Endereco = TBEndereco.Text;
                novoUsuario.Email = TBEmail.Text;
                novoUsuario.Senha = TBSenha.Text;

                // Adiciona o novo usuário à lista do GerenciadorDeUsuarios
                GerenciadorDeUsuarios gerenciador = new GerenciadorDeUsuarios();
                gerenciador.AdicionarUsuario(novoUsuario);

                // Salva o novo usuário no banco de dados
                ConexaoBD conexaoBD = new ConexaoBD();
                conexaoBD.AdicionarUsuario(novoUsuario);

                // Limpa os campos do formulário
                TBNome.Text = "";
                TBCPF.Text = "";
                CLDataNasc.SelectedDate = DateTime.Now;
                TBEndereco.Text = "";
                TBEmail.Text = "";
                TBSenha.Text = "";

                // Exibe mensagem de sucesso
                string mensagem = "Usuário Cadastrado com Sucesso !! Deseja ir para Tela inicial ?";
                string script = "if (confirm('" + mensagem + "')) { window.location.href = 'Login1.aspx'; }";
                Response.Write("<script>" + script + "</script>");
            }
        }

    }
}
