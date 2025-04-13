package br.upf.agendamento.controller;

import br.upf.agendamento.model.Usuario;
import br.upf.agendamento.repository.UsuarioRepository;
import br.upf.agendamento.security.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private UsuarioRepository usuarioRepository;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody AuthRequest request) {
        try {
            // Autentica o usuário com base no email e senha
            Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(request.getEmail(), request.getSenha())
            );

            // Recupera os dados do usuário autenticado
            User user = (User) authentication.getPrincipal();
            Optional<Usuario> usuario = usuarioRepository.findByEmail(request.getEmail());

            if (usuario.isEmpty()) {
                return ResponseEntity.status(401).body("Usuário não encontrado");
            }

            // Gerar o token usando o username (e-mail) do usuário
            String token = jwtUtil.generateToken(user.getUsername());
            return ResponseEntity.ok(new AuthResponse(token));
        } catch (Exception e) {
            return ResponseEntity.status(401).body("Credenciais inválidas");
        }
    }

    // Classe para receber os dados do login
    public static class AuthRequest {
        private String email;
        private String senha;

        public String getEmail() {
            return email;
        }
        public void setEmail(String email) {
            this.email = email;
        }
        public String getSenha() {
            return senha;
        }
        public void setSenha(String senha) {
            this.senha = senha;
        }
    }

    // Classe para enviar a resposta com o token
    public static class AuthResponse {
        private String token;

        public AuthResponse(String token) {
            this.token = token;
        }
        public String getToken() {
            return token;
        }
        public void setToken(String token) {
            this.token = token;
        }
    }
}
