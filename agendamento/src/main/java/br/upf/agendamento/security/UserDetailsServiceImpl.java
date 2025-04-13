package br.upf.agendamento.security;

import br.upf.agendamento.model.Usuario;
import br.upf.agendamento.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.*;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import java.util.Collections;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        Usuario usuario = usuarioRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Usuário não encontrado com email: " + email));

        // Aqui assumimos que todos os usuários têm uma role genérica "USER"
        return new User(usuario.getEmail(), usuario.getSenha(), Collections.singleton(new SimpleGrantedAuthority("ROLE_USER")));
    }
}
