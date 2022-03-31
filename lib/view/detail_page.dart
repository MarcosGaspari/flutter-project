import 'package:flutter/material.dart';
import 'package:project_flutter/models/produto.dart';
import 'package:project_flutter/controller/navBar.dart';

class DetailPage extends StatefulWidget {
  Produto produto;

  DetailPage({ Key? key, required this.produto }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text(widget.produto.description),
      ),
    );
  }

}
   