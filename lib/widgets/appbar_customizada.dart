import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/widgets/botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final bool isCarrinho;

  AppBarCustomizada({this.titulo, this.isCarrinho});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        titulo,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _mudarPaginaCarrinho(isCarrinho),
      ],
    );
  }

  _mudarPaginaCarrinho(bool isCarrinho) {
    return isCarrinho ? Container() : BotaoCarrinho();
  }

  @override
  Size get preferredSize => Size.fromHeight(kTextTabBarHeight);
}
