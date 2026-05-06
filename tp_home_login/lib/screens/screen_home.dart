import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Hola mundo", style: TextStyle(fontSize: 70, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Pirata One') ),
        ),
      ),
    );
  }
}