using Aula4.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class GerenciadorDeUsuarios
{
    private List<Usuario> listaUsuarios;

    public GerenciadorDeUsuarios()
    {
        listaUsuarios = new List<Usuario>();
    }


    public void AdicionarUsuario(Usuario usuario)
    {
        listaUsuarios.Add(usuario);
    }

    public Usuario BuscarUsuario(string email, string senha)
    {
        foreach (Usuario usuario in listaUsuarios)
        {
            if (usuario.Email.Equals(email) && usuario.Senha.Equals(senha))
            {
                return usuario;
            }
        }
        return null;
    }
}
