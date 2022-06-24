import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  DB._();
  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != _database) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'mobiliaria.db'),
      version: 1,
      onCreate: _onCreate
    );
  }

  _onCreate(db, version) async {
    await db.execute(_produto);
    await db.execute(_category);
    await db.insert('category', { 'icone': 'images/cozinha.jpg', 'nome': 'Cozinha'});
    await db.insert('category', { 'icone': 'images/escritorio.jpg', 'nome': 'Escritorio'});
    await db.insert('category', { 'icone': 'images/sala.jpg','nome': 'Sala'});
    await db.insert('category', { 'icone': 'images/quarto.jpg','nome': 'Quarto'});
    await db.insert('category', { 'icone': 'images/banheiro.png','nome': 'Banheiro'});
  }

  String get _produto => '''
    CREATE TABLE produto (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      category INTEGER,
      valor REAL,
      title TEXT,
      image TEXT,
      description TEXT
    );
  ''';

  String get _category => '''
    CREATE TABLE category (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      icone  TEXT,
      nome TEXT
    );
  ''';
}