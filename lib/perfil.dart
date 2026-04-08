import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  final String nome;
  final String email;

  PerfilPage({required this.nome, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212), // fundo mais moderno

      appBar: AppBar(
        title: Text(
          "Perfil",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF1E1E1E), // corrigido (antes branco)
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              // 👤 CARD PRINCIPAL
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [

                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white12, // melhorado
                      child: Text(
                        (nome.isNotEmpty ? nome[0] : "U").toUpperCase(),
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      nome.isNotEmpty ? nome : "Usuário",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22, // aumentado
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      email,
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // 📊 CARD PROGRESSO
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Progresso",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    LinearProgressIndicator(
                      value: 0.4,
                      minHeight: 8, // mais bonito
                      backgroundColor: Colors.white12,
                      color: Colors.white,
                    ),

                    SizedBox(height: 10),

                    Text(
                      "40% concluído",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // ⏱ CARD TEMPO
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [

                    Icon(Icons.timer, color: Colors.white),

                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tempo de evolução",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "3 dias de aprendizado",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // 🚀 CARD PRÓXIMOS PASSOS
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Próximos passos",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    _item("Criar navegação entre telas"),
                    _item("Conectar com Firebase"),
                    _item("Criar sistema de login real"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _item(String texto) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.white, size: 18),
          SizedBox(width: 8),
          Text(
            texto,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}