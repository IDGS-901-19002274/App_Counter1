import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = const TextStyle(fontSize: 25);
  int _conteo = 0;

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
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _CrearBotones(),
    );
  }

  Widget _CrearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _conteo += 1;
            });
          },
        ),
        const SizedBox(
          width: 50,
        ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () {
            setState(() {
              _conteo = 0;
            });
          },
        ),
        const SizedBox(
          width: 50,
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _conteo -= 1;
            });
          },
        ),
      ],
    );
  }
}
