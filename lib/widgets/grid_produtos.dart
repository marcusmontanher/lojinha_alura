import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/elemento_grid_produtos.dart';

class GridProdutos extends StatelessWidget {
  final moveis;
  final Function atualiza;

  const GridProdutos({this.moveis, this.atualiza});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int i) {
        final movel = Movel.fromJson(moveis[i]);
        return ElementoGridProduto(
          movel: movel,
        );
      },
    );
  }
}
