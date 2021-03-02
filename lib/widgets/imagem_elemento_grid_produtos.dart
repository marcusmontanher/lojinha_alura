import 'package:flutter/cupertino.dart';

class ImagemElementoGridProdutos extends StatelessWidget {
  final String imagem;

  const ImagemElementoGridProdutos({this.imagem});

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.cover,
      image: AssetImage('utilidades/assets/imagens/$imagem'),
    );
  }
}
