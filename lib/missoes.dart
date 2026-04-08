import 'package:flutter/material.dart';

class MissoesPage extends StatelessWidget {

  final String titulo;
  final String descricao;
  final int xp;

  MissoesPage({
    required this.titulo,
    required this.descricao,
    required this.xp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),

      appBar: AppBar(
        title: Text(
          "Projeto",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF1E1E1E), // corrigido (antes branco)
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TÍTULO DO PROJETO
            Text(
              titulo,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 20),

            // OBJETIVO
            Text(
              "Objetivo do Projeto",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              descricao,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              ),
            ),

            SizedBox(height: 25),

            // RECOMPENSA XP
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "+$xp XP",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),

            // BOTÃO
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("CONCLUIR PROJETO"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}