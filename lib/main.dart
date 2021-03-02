import 'package:flutter/material.dart';
import 'package:lojinha_alura/moveis.dart';
import 'package:lojinha_alura/paginas/carrinho.dart';
import 'package:lojinha_alura/paginas/detalhes.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/carrinho': (context) => Carrinho()},
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  final List moveis = Moveis().moveis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: "Lojinha Alura",
        isCarrinho: false,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detalhes(),
              ),
            );
          },
          child: Text('Vamos para os detalhes'),
        ),
      ),
    );
  }
}
