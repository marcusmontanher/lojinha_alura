import 'package:flutter/cupertino.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produtos.dart';

class ElementoGridProduto extends StatelessWidget {
  final Movel movel;

  const ElementoGridProduto({this.movel});

  @override
  Widget build(BuildContext context) {
    return ImagemElementoGridProdutos(
      imagem: movel.foto,
    );
  }
}
