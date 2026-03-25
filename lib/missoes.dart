import 'package:flutter/material.dart';

class MissoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),

      appBar: AppBar(
        title: Text("Projeto"),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Título principal
            Text(
              "Criar a primeira tela",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 25),

            // Card objetivo
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Objetivo do Projeto",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Criar a primeira interface de um aplicativo Flutter utilizando Scaffold, Text e Column.",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Card tecnologias
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Tecnologias usadas",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text("• Scaffold", style: TextStyle(color: Colors.white)),
                  Text("• Text", style: TextStyle(color: Colors.white)),
                  Text("• Column", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Recompensa
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.deepPurple),
                  SizedBox(width: 10),
                  Text(
                    "+100 XP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),

            // Botão bonito
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "CONCLUIR PROJETO",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}