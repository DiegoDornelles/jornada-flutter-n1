import 'package:flutter/material.dart';
import 'missoes.dart';
import 'perfil.dart';import 'perfil.dart';import 'perfil.dart';

class HomePage extends StatelessWidget {
  final String nome;
  final String email;

  HomePage({required this.nome, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),

      appBar: AppBar(
        title: Text(
          "Jornada Flutter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF1E1E1E), // corrigido (antes branco)
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Olá, $nome 👋",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Bem-vindo à Jornada Flutter",
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PerfilPage(
                        nome: nome,
                        email: email,
                      ),
                    ),
                  );
                },
              ),
            ),

            // PROJETO 1
            _cardProjeto(
              context,
              "Criar a primeira tela",
              "Aprenda Scaffold, Text e Column",
              100,
            ),

            SizedBox(height: 15),

            // PROJETO 2
            _cardProjeto(
              context,
              "Criar botão funcional",
              "Aprenda ElevatedButton e Navigator",
              150,
            ),

            SizedBox(height: 15),

            // PROJETO 3
            _cardProjeto(
              context,
              "Criar navegação entre telas",
              "Aprenda rotas e troca de páginas",
              200,
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardProjeto(BuildContext context, String titulo, String descricao, int xp) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Color(0xFF1C1C1C),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 8),

          Text(
            descricao,
            style: TextStyle(color: Colors.white.withOpacity(0.7)),
          ),

          SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                "+$xp XP",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MissoesPage(
                        titulo: titulo,
                        descricao: descricao,
                        xp: xp,
                      ),
                    ),
                  );
                },
                child: Text("Abrir"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}