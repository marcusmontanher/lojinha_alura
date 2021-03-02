import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';
import 'package:lojinha_alura/widgets/card_detalhes.dart';

class Detalhes extends StatelessWidget {
  final Movel movel;

  const Detalhes({this.movel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('utilidades/assets/imagens/${movel.foto}'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(
          titulo: "",
          isCarrinho: false,
        ),
        body: Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              margin: EdgeInsets.all(16),
              child: CardDetalhes(movel: movel,),
            ),
          ),
        ),
      ),
    );
  }
}
