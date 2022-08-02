import 'package:flut_and_database/database/transaction_db.dart';
import 'package:flut_and_database/models/Transaction.dart';
import 'package:flutter/foundation.dart';

class TransactionProvider with ChangeNotifier{
  
  List<Transactions> transactions = [];
  List<Transactions>getTransaction(){
    return transactions;
  }

  void addTransaction(Transactions statement) async{
    //var db = await TransactionDB(dbname: "transaction.db").openDatabase();
    //print(db);
    
    var db = TransactionDB(dbname: "transaction.db");
    await db.InsertData(statement);
    transactions = await db.loadAllData();
    
    notifyListeners();
  }
}