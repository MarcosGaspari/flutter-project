import 'package:flutter/material.dart';
import 'package:project_flutter/pages/navBar.dart';
import 'package:project_flutter/repositores/produto_repository.dart';

class  HomePage2 extends StatelessWidget {
  const HomePage2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = ProdutoRepository.tabela;

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 5.0,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int produto){
          return ListTile(
            leading: Image.asset(tabela[produto].icone),
            title: Text(tabela[produto].nome),
            trailing: Text(tabela[produto].preco.toString()),
          );
        }, 
        padding: EdgeInsets.all(16),
        separatorBuilder: (_,__) => Divider(), 
        itemCount: tabela.length,
      ) 
    );
  }
}