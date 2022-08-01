import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
class TransactionDB{
  String dbname;

  TransactionDB({this.dbname});

  Future <String> openDatabase() async{
    
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDirectory.path,dbname);
    DatabaseFactory dbFactory = await databasefactoryIo;
    Database db = dbFactory.openDatabase(dbLocation);
    return dbLocation;

 }
  
}