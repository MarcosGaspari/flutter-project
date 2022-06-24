import 'package:flutter/material.dart';
import 'package:project_flutter/models/categories.dart';
import 'package:project_flutter/controller/navBar.dart';
import 'package:project_flutter/repositores/category_repository.dart';
import 'package:project_flutter/view/produto_page.dart';

class  HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  
  @override
  State<HomePage> createState() => _HomePageState();
}
List lista = [];
List<Category> listaCategoria = [];

getCategorias() async{
  lista = await CategoryRepository().getCategory();
  for(var item in lista){
    int id = item["id"];
    String  nome = item["nome"];
    String icone = item["icone"];
    Category categ = new Category(id: id, icone: icone, nome: nome);
    listaCategoria.add(categ);
    }
    return true;
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) 
  {
    var a = getCategorias();
    final tabela = listaCategoria;

    mostraProduto(Category category) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProdutoPage(category: category)));
    }

    return Scaffold(
      drawer: const NavBar(),
      backgroundColor: Colors.black.withOpacity(0.7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:  Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text('Selecione uma categoria', 
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tabela.length,
                itemBuilder: (BuildContext item, int produto){
                  return GestureDetector(
                    onTap: () {
                      mostraProduto(tabela[produto]);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      height: 150,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                            child: Image.asset(tabela[produto].icone,
                            fit: BoxFit.cover),
                            )
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent
                                  ]
                                )
                              ),
                            )
                          ),
                          Positioned(
                            bottom: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Text(tabela[produto].nome,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  );
                },
              )
            )
          ],
        ),
      )
    );
  }
}