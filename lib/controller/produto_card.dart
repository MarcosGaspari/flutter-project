import 'package:flutter/material.dart';
import 'package:project_flutter/models/produto.dart';
import 'package:project_flutter/view/detail_page.dart';

class ProductCard extends StatefulWidget {
  Produto produto;

  ProductCard({ Key? key, required this.produto}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  DetailProduto(Produto produto) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailPage(produto: produto)));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
    onTap: () {
      DetailProduto(widget.produto);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      height: 125,
      child: InkWell(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color:  Colors.lightBlue,
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${widget.produto.id}',
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  height: 140,
                  width: 140,
                  child: Image.asset(
                    widget.produto.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40),
                      child: Text(
                        widget.produto.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30 * 1.5,
                        vertical: 5 / 4,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "R\$${widget.produto.valor}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}