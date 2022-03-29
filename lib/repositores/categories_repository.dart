import 'package:project_flutter/models/categories.dart';

class CategoriesRepository{
  static List<Category> tabela = [
    Category(
      id: 1,
      icone: 'images/cozinha.jpg', 
      nome: 'Cozinha', 
    ),
    Category(
      id: 2,
      icone: 'images/escritorio.jpg', 
      nome: 'Escritorio', 
    ),
    Category(
      id: 3,
      icone: 'images/sala.jpg', 
      nome: 'Sala', 
    ),
    Category(
      id: 4,
      icone: 'images/quarto.jpg', 
      nome: 'Quarto', 
    ),
    Category(
      id: 5,
      icone: 'images/banheiro.png', 
      nome: 'Banheiro', 
    ),
  ];
}