import 'package:flutter/material.dart';
import 'package:project_flutter/models/categories.dart';
import 'package:project_flutter/pages/navBar.dart';
import 'package:project_flutter/repositores/produto_repository.dart';

class ProdutoPage extends StatefulWidget {
  Category category;

  ProdutoPage({ Key? key, required this.category }) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text(widget.category.nome),
      ),
    );
  }

}
   