import 'package:flutter/material.dart';

void main() {
  runApp(const Principaal());
}

class Principaal extends StatefulWidget {
  const Principaal({super.key});

  @override
  State<Principaal> createState() => _PrincipaalState();
}

class _PrincipaalState extends State<Principaal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            // HISTORIAS DART
            Container(
              height: 120,
              color: Colors.black,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  historia("Heidy", Colors.red),
                  historia("Marcela", Colors.green),
                  historia("Rojas", Colors.blue),
                ],
              ),
            ),

            // CHATS DART
            chatTile("Heidy", "Hola, ¿cómo estás?", "10:30"),
            chatTile("Marcela", "Nos vemos luego", "9:15"),
            chatTile("Rojas", "😂😂😂", "Ayer"),
          ],
        ),
      ),
    );
  }

  // HISTORIAS FUNCION PARA CREAR HISTORIAS
  Widget historia(String nombre, Color color) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: const Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(nombre, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // CHAT  FUNCION PARA CREAR CHAT 
  Widget chatTile(String nombre, String mensaje, String hora) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(nombre),
      subtitle: Text(mensaje),
      trailing: Text(hora),
    );
  }
}