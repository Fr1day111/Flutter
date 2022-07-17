import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class dbHelper{

dbHelper._privateConstructor();
dbHelper instance= dbHelper._privateConstructor();

Database _database;
Future<Database> get database=>_database??=_initilizeDatabase();

  _initilizeDatabase()async {
    Directory directory=await getApplicationDocumentsDirectory();
    String path=join(directory.path,'semesterdb');
    openDatabase(path,version: 1,onCreate: _onCreate);
  }

}