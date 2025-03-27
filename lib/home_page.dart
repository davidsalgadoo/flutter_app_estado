import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$contador', style: TextStyle(fontSize: 40))),
      floatingActionButton: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 100,
            bottom: 20,
            child: FloatingActionButton(
              onPressed: decrementar,
              backgroundColor: Colors.red,
              child: Icon(Icons.remove, color: Colors.white, size: 30),
            ),
          ),

          Positioned(
            right: 100,
            bottom: 20,
            child: FloatingActionButton(
              onPressed: incrementar,
              backgroundColor: Colors.blue,
              child: Icon(Icons.add, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
