import 'package:flut_and_database/models/Transaction.dart';
import 'package:flut_and_database/providers/transaction_provider.dart';
import 'package:flut_and_database/screen/form-screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return TransactionProvider();
        })
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormScreen();
                }));
              },
            )
          ],
        ),
        body: Consumer(
          
          builder: (context, TransactionProvider provider, child) {
          var count = provider.transactions.length;
         if(count<0){
          return Center(
            child: Text("ไม่พบข้อมูล" ,style:  TextStyle(fontSize: 40),),
          );
         }else {
          return ListView.builder(
              itemCount: count,
              itemBuilder: (context, int index) {
                Transaction data = provider.transactions[index];
                return Card(
                    child: ListTile(
                  leading: CircleAvatar(
                      radius: 30,
                      child: FittedBox(
                        child: Text(data.amount.toString()),
                      )),
                  title: Text(data.title),
                  subtitle: Text(data.date.toString()),
                ));
              });
         }
        }));
  }
}
