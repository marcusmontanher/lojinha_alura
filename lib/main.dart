import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/item_carrinho.dart';
import 'package:lojinha_alura/modelos/moveis.dart';
import 'package:lojinha_alura/paginas/carrinho.dart';
import 'package:lojinha_alura/paleta_cores.dart';
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
        primarySwatch: PaletaCores().lilas,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.black),
          headline2: TextStyle(
              fontSize: 20,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.white),
          headline3: TextStyle(
              fontSize: 16,
              fontFamily: 'Alata',
              fontWeight: FontWeight.bold,
              color: Colors.black),
          headline4: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w200, color: Colors.black),
        ),
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  final List moveis = Moveis().moveis;
  static List<ItemCarrinho> itensCarrinho = List();
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
                  margin:
                      EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text(
                'Produtos',
                style: Theme.of(context).textTheme.headline3,
              ),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
            ],
          ),
          Flexible(
            child: GridProdutos(
              moveis: Moveis().moveis,
              atualiza: atualiza,
            ),
          ),
        ],
      ),
    );
  }

  atualiza() {
    setState(() {});
  }
}
