import 'package:project_flutter/models/produto.dart';

class ProdutoRepository{
  static List<Produto> tabela = [
    Produto(
      id: 1,
      idCategory: 1,
      icone: 'images/cadeira.jpg', 
      nome: 'Cadeira Gamer', 
      preco: 800.90
    ),
    Produto(
      id: 2,
      idCategory: 1,
      icone: 'images/cadeira.jpg', 
      nome: 'Cadeira Gamer', 
      preco: 999.90
    ),
    Produto(
      id: 3,
      idCategory: 1,
      icone: 'images/cadeira.jpg', 
      nome: 'Cadeira Gamer', 
      preco: 750.90
    ),
    Produto(
      id: 4,
      idCategory: 1,
      icone: 'images/cadeira.jpg', 
      nome: 'Cadeira Gamer', 
      preco: 651.90
    ),
    Produto(
      id: 5,
      idCategory: 1,
      icone: 'images/cadeira.jpg', 
      nome: 'Cadeira Gamer', 
      preco: 870.90
    ),
  ];
}