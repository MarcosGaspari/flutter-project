import 'package:flutter/material.dart';
import 'package:project_flutter/pages/navBar.dart';
import 'package:project_flutter/repositores/categories_repository.dart';

class  HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = CategoriesRepository.tabela;

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 5.0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Selecione uma categoria', 
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black)
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tabela.length,
                itemBuilder: (BuildContext item, int produto){
                  return Container(
                    margin: EdgeInsets.all(20),
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(tabela[produto].icone,
                          fit: BoxFit.cover),
                        )
                      ],
                    ),
                  );
                }
              )
            )
          ],
        ),
      )
    );
  }
}