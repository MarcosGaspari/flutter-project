import 'package:project_flutter/database/db.dart';
import 'package:sqflite/sqflite.dart';

class CategoryRepository {
  late Database db;

  getCategory() async {
    db = await DB.instance.database;
    String sql = "SELECT * FROM category";
    dynamic lista = await db.rawQuery(sql);
    
    return lista;
  }

  getProduto() async {
    db = await DB.instance.database;
    String sql = "SELECT * FROM produto";
    dynamic lista = await db.rawQuery(sql);
    
    return lista;
  }

  insertProduto(int category, double valor, String title, String image, String description) async {
    db = await DB.instance.database;
    String sql = "INSERT INTO produto (category, valor, title, image, description) + "
    "VALUES('"+category.toString()+"', '"+valor.toString()+"', '"+title+"', '"+image+"', '"+description+"')";
    await db.rawInsert(sql);
  }
}