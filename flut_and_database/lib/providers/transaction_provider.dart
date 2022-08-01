import 'package:flut_and_database/models/Transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier{
  
  List<Transaction> transaction = [

    Transaction(title : "ชื่อหนังสือ",amount : 500,date:DateTime.now()),
    Transaction(title : "เสื้อผ้า",amount : 400,date:DateTime.now()),
    Transaction(title : "กางเกง",amount : 300,date:DateTime.now()),
    Transaction(title : "นาฬิกา",amount : 1000,date:DateTime.now()),
  ];
  List<Transaction>getTransaction(){
    return transaction;
  }

  addTransaction( Transaction statement){
    transaction.add(statement);
  }
}