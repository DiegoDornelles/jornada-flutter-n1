import 'package:flutter/material.dart';
import 'missoes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Minha Carreira"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Diego",
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text(
              "Cargo: Estagiário Flutter",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            SizedBox(height: 20),

            LinearProgressIndicator(
              value: 0.3,
              minHeight: 10,
              backgroundColor: Colors.white12,
              color: Colors.deepPurple,
            ),

            SizedBox(height: 40),

            Text(
              "Projetos disponíveis",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),

            SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: Icon(Icons.phone_android),
                title: Text("Criar primeira tela"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MissoesPage()),
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.phone_android),
                title: Text("Criar botão no Flutter"),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.phone_android),
                title: Text("Criar layout com Column e Row"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}