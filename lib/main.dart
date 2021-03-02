import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/moveis.dart';
import 'package:lojinha_alura/paginas/carrinho.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';
import 'package:lojinha_alura/widgets/grid_produtos.dart';

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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text('Produtos'),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
            ],
          ),
          Flexible(
            child: GridProdutos(
              moveis: Moveis().moveis,
            ),
          ),
        ],
      ),
    );
  }
}
