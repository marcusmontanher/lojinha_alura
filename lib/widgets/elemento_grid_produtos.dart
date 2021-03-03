import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/paginas/detalhes.dart';
import 'package:lojinha_alura/widgets/degrade_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/imagem_elemento_grid_produtos.dart';
import 'package:lojinha_alura/widgets/titulo_elemento_grid_produtos.dart';

class ElementoGridProduto extends StatefulWidget {
  final Movel movel;
  final Function atualiza;
  const ElementoGridProduto({this.movel, this.atualiza});

  @override
  _ElementoGridProdutoState createState() => _ElementoGridProdutoState();
}

class _ElementoGridProdutoState extends State<ElementoGridProduto> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detalhes(
                      movel: widget.movel,
                    ))).then((value) => widget.atualiza);
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(spreadRadius: 2, blurRadius: 8, color: Colors.black26),
          ],
        ),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ImagemElementoGridProdutos(
                imagem: widget.movel.foto,
              ),
              DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(
                titulo: widget.movel.title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
