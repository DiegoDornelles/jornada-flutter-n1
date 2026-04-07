import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  final String nome;
  final String email;

  PerfilPage({required this.nome, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),

      appBar: AppBar(
        title: Text("Perfil do Usuário"),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // FOTO / AVATAR
            Center(
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Colors.deepPurple,
                child: Text(
                  nome[0].toUpperCase(),
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 25),

            // NOME
            Text(
              "Nome",
              style: TextStyle(color: Colors.deepPurple),
            ),
            Text(
              nome,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),

            SizedBox(height: 20),

            // EMAIL
            Text(
              "E-mail",
              style: TextStyle(color: Colors.deepPurple),
            ),
            Text(
              email,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),

            SizedBox(height: 25),

            // PROGRESSO
            Text(
              "Progresso na Jornada Flutter",
              style: TextStyle(color: Colors.deepPurple),
            ),

            SizedBox(height: 10),

            LinearProgressIndicator(
              value: 0.4, // 40% (mockado)
              backgroundColor: Colors.white12,
              color: Colors.deepPurple,
            ),

            SizedBox(height: 8),

            Text(
              "40% concluído",
              style: TextStyle(color: Colors.white70),
            ),

            SizedBox(height: 25),

            // TEMPO
            Text(
              "Tempo de evolução",
              style: TextStyle(color: Colors.deepPurple),
            ),

            SizedBox(height: 5),

            Text(
              "3 dias de aprendizado",
              style: TextStyle(color: Colors.white70),
            ),

            SizedBox(height: 25),

            // O QUE FALTA
            Text(
              "Próximos passos",
              style: TextStyle(color: Colors.deepPurple),
            ),

            SizedBox(height: 10),

            Text("• Criar navegação entre telas", style: TextStyle(color: Colors.white)),
            Text("• Conectar com Firebase", style: TextStyle(color: Colors.white)),
            Text("• Criar sistema de login real", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}