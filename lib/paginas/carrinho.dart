import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/appbar_customizada.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: "Carrinho",
        isCarrinho: true,
      ),
      body: Center(
        child: Text("Estamos no carrinho"),
      ),
    );
  }
}
