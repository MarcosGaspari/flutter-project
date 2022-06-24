
import 'package:flutter/material.dart';
import 'package:project_flutter/models/categories.dart';
import 'package:project_flutter/controller/produto_card.dart';
import 'package:project_flutter/models/produto.dart';
import 'package:project_flutter/repositores/produto_repository.dart';
import 'package:project_flutter/view/detail_page.dart';

import '../repositores/category_repository.dart';

class ProdutoPage extends StatefulWidget {
  Category category;

  ProdutoPage({ Key? key, required this.category }) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

List lista = [];
List<Produto> listaProdutos = [];

getProdutos() async{
  lista = await CategoryRepository().getProduto();
  for(var item in lista){
    int id = item["id"];
    int category = item["category"];
    double valor = item["valor"];
    String title = item["title"];
    String image = item["image"];
    String description = item["description"];
    Produto produto = new Produto(id: id, category: category, valor: valor,title: title, image: image, description: description);
    listaProdutos.add(produto);
    }
    return true;
}

class _ProdutoPageState extends State<ProdutoPage>{
  detailPage(Produto produto) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailPage(produto: produto)));
  }

  @override
  Widget build(BuildContext context) {
  var result = getProdutos();
  var tabela = listaProdutos;
    var resultado = tabela
        .where((element) => element.category == widget.category.id)
        .toList();

    return Scaffold(
    appBar: AppBar(
        title: Text(widget.category.nome, style: const TextStyle(fontSize: 20)),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 0),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                 ListView.builder(
                  itemCount: resultado.length,
                  itemBuilder: (context, index) => ProductCard(
                    produto: resultado[index],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
  