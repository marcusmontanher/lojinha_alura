import 'package:flutter/material.dart';

class TituloElementoGridProdutos extends StatelessWidget {
  final String titulo;

  const TituloElementoGridProdutos({this.titulo});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Text(
        titulo,
        style: Theme.of(context).textTheme.headline2,
        overflow: TextOverflow.fade,
      ),
    );
  }
}
