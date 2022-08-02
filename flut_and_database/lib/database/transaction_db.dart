import 'dart:io';
import 'package:flut_and_database/models/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
class TransactionDB{
  String dbname;

  TransactionDB({this.dbname});

  Future <String> openDatabase() async{
    
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDirectory.path,dbname);
    DatabaseFactory dbFactory = await databasefactoryIo;
    Database db = await dbFactory.openDatabase(dbLocation);
    return dbLocation;

 }
  
  InsertData(Transactions statement) async{
    var db = await this.openDatabase();
    var store = intMapStorefactory.store("expense");

    store.add(db,{
      "title":statement.title,
      "amount":statement.amount,
      "date":statement.date,
      });
  }
}