import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/modelos/item_carrinho.dart';
import 'package:lojinha_alura/modelos/movel.dart';

class ListaCarrinho extends StatefulWidget {
  final Function atualiza;

  const ListaCarrinho({this.atualiza});

  @override
  _ListaCarrinhoState createState() => _ListaCarrinhoState();
}

class _ListaCarrinhoState extends State<ListaCarrinho> {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;
  final formatacaoReais = NumberFormat.currency(locale: "pt_BR", symbol: "R\$");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carrinho.length,
      itemBuilder: (BuildContext contex, int i) {
        ItemCarrinho item = carrinho[i];
        Movel movel = item.movel;

        return Container(
          margin: EdgeInsets.all(8),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    fit: BoxFit.cover,
                    height: 92,
                    image:
                        AssetImage('utilidades/assets/imagens/${movel.foto}'),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 92,
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movel.title,
                          style: Theme.of(contex).textTheme.headline3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatacaoReais.format(movel.preco)),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    _aumentarQtd(item);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(12),
                                    child: Icon(
                                      Icons.add,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Text('${item.quantidade}'),
                                InkWell(
                                  onTap: () {
                                    _diminuirQtd(item);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(12),
                                    child: Icon(
                                      Icons.remove,
                                      size: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _aumentarQtd(ItemCarrinho item) {
    setState(() {
      item.quantidade++;
      widget.atualiza();
    });
  }

  _diminuirQtd(ItemCarrinho item) {
    if (item.quantidade > 1) {
      setState(() {
        item.quantidade--;
        widget.atualiza();
      });
    } else {
      _removerMovel(item);
    }
  }

  _removerMovel(ItemCarrinho item) {
    setState(() {
      Inicio.itensCarrinho.remove(item);
      widget.atualiza();
    });
  }
}
