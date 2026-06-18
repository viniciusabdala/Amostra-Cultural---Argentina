import 'package:flutter/material.dart';

void cultura(){
  runApp(const Cultura());
}

class Cultura extends StatelessWidget {
  const Cultura({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cultura"),
        backgroundColor: const Color.fromARGB(255, 117, 170, 219),
        leading: Padding(
          padding: EdgeInsetsGeometry.all(8.0),
          child: IconButton(onPressed: () {
            Navigator.pop(context);},
            icon: Icon(Icons.arrow_back)),
        ),
      ),
      body: Center(child: Text("skfhsljgfsa")),
    );
  }
}
