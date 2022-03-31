import 'package:project_flutter/models/produto.dart';

class ProdutoRepository{
  static List<Produto> tabela = [
    Produto(
      id: 1,
      category: 2,
      valor: 749.99,
      title: "Cadeira Gamer",
      image: "images/cadeira.jpg",
      description:
          "",
    ),
    Produto(
      id: 2,
      category: 2,
      valor: 499.90,
      title: "Escrivaninha",
      image: "images/cadeira.jpg",
      description:
          "",
    ),
    Produto(
      id: 3,
      category: 2,
      valor: 200.00,
      title: "Bar Stool Chair",
      image: "images/cadeira.jpg",
      description:
          "",
    ),
    Produto(
      id: 4,
      category: 1,
      valor: 114.49,
      title: "Classic Leather Arm Chair",
      image: "images/cadeira.jpg",
      description:
          "",
    ),Produto(
      id: 5,
      category: 2,
      valor: 60.49,
      title: "Classic Leather Arm Chair",
      image: "images/cadeira.jpg",
      description:
          "",
    ),
  ];
}