import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "fdsfdsfdsfdsfds",
      home: Myhomepage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("App budsop"),
      ),
      body: Center(
          child: ListView(
         children: getData(15),
      ),
      ),
    );
  }
  List<Widget> getData(int count){
     List<Widget> data = [];
     for(var i=0; i<10; i++){
      data.add(Text("รายการ ${i+1}",style: TextStyle(fontSize: 15),));

    }
return data;
  }
}
