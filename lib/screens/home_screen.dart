import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final TextStyle estiloTexto = const TextStyle(fontSize: 25);

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Clicks: ',
              style: estiloTexto,
            ),
            Text(
              '0',
              style: estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print("Holamundo");
        },
      ),
    );
  }
}
