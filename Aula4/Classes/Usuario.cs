using System;
using System.Collections.Generic;

namespace Aula4.Classes
{
    public class Usuario
    {
        private string nome;
        private DateTime dataNascimento;
        private string cpf;
        private string endereco;
        private string email;
        private string senha;

        public Usuario(string nome, DateTime dataNascimento, string cpf, string endereco, string email, string senha)
        {
            this.nome = nome;
            this.dataNascimento = dataNascimento;
            this.cpf = cpf;
            this.endereco = endereco;
            this.email = email;
            this.senha = senha;
        }

        public Usuario()
        {
        }

        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }

        public DateTime DataNascimento
        {
            get { return dataNascimento; }
            set { dataNascimento = value; }
        }

        public string CPF
        {
            get { return cpf; }
            set { cpf = value; }
        }

        public string Endereco
        {
            get { return endereco; }
            set { endereco = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Senha
        {
            get { return senha; }
            set { senha = value; }
        }
        public static List<Usuario> listaUsuarios = new List<Usuario>();

        public void CadastrarUsuario()
        {
            // aqui você implementa a lógica para cadastrar o usuário
        }
    }
}
