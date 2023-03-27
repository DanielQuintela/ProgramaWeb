using System.Configuration;
using System.Data.SQLite;

namespace Aula4.Classes
{
    public class ConexaoBD
    {
        public void AdicionarUsuario(Usuario novoUsuario)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MeuBanco"].ConnectionString;

            using (SQLiteConnection conexao = new SQLiteConnection(connectionString))
            {
                conexao.Open();

                // Crie as tabelas necessárias
                using (SQLiteCommand comando = new SQLiteCommand("CREATE TABLE IF NOT EXISTS Usuarios (Id INTEGER PRIMARY KEY AUTOINCREMENT, Nome TEXT, CPF TEXT, DataNascimento TEXT, Endereco TEXT, Email TEXT, Senha TEXT)", conexao))
                {
                    comando.ExecuteNonQuery();
                }

                // Insira um novo usuário
                using (SQLiteCommand comando = new SQLiteCommand("INSERT INTO Usuarios (Nome, CPF, DataNascimento, Endereco, Email, Senha) VALUES (@Nome, @CPF, @DataNascimento, @Endereco, @Email, @Senha)", conexao))
                {
                    comando.Parameters.AddWithValue("@Nome", novoUsuario.Nome);
                    comando.Parameters.AddWithValue("@CPF", novoUsuario.CPF);
                    comando.Parameters.AddWithValue("@DataNascimento", novoUsuario.DataNascimento.ToString("yyyy-MM-dd"));
                    comando.Parameters.AddWithValue("@Endereco", novoUsuario.Endereco);
                    comando.Parameters.AddWithValue("@Email", novoUsuario.Email);
                    comando.Parameters.AddWithValue("@Senha", novoUsuario.Senha);

                    comando.ExecuteNonQuery();
                }
            }
        }
    }
}
