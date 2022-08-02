import 'package:flut_and_database/providers/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/Transaction.dart';

class FormScreen extends StatelessWidget {
  FormScreen({Key? key}) : super(key: key);
  final formkey = GlobalKey<FormState>();
  final titleConTroller = TextEditingController();
  final amountConTroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("แบบฟอร์มบันทึกข้อมูล"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: new InputDecoration(
                    labelText: "ชื่อรายการ",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  autofocus: true,
                  controller: titleConTroller,
                  validator: (var str) {
                    var c_str = str!.isEmpty;
                    if (c_str) {
                      return "กรุณาป้อนชื่อรายการ";
                    }
                    if (double.parse(str) <= 0) {
                      return "กรุณาป้อนตัวเลขมากกว่า 0";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: new InputDecoration(
                    fillColor: Colors.grey,
                    focusColor: Colors.grey,
                    labelText: "จำนวนเงิน",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: amountConTroller,
                  validator: (var str) {
                    var c_str = str!.isEmpty;
                    if (c_str) {
                      return "กรุณาป้อนจำนวนเงิน";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                FlatButton(
                  child: Text("เพิ่มข้อมูล"),
                  color: Colors.yellowAccent,
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      var title = titleConTroller.text;
                      var amount = amountConTroller.text;

                      Transactions statement = Transactions(
                          title: title,
                          amount: double.parse(amount),
                          date: DateTime.now());
                      var provider = Provider.of<TransactionProvider>(context,
                          listen: false);
                      provider.addTransaction(statement);
                      Navigator.pop(context);
                    }
                  },
                )
              ],
            ),
          ),
        ));
  }
}
