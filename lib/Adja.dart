import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 50,
        ),
        actions: [
          Icon(
            Icons.person,
            color: Colors.black,
            size: 50,
          )
        ],
      ),
      body: const Center(
        child: Text(
          'DEVELOPPER FLUTTER',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      bottomNavigationBar: Icon(Icons.home),
    );
  }
}
