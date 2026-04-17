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
      ),
    );
  }
}