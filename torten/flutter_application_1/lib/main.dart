import 'package:flutter/material.dart';
import 'foodmnu.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "fdsfdsfdsfdsfds",
      home: Myhomepage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);
@override
  State<Myhomepage> createState() => _MyhomepageState();
}
class _MyhomepageState extends State<Myhomepage> {
  List<Foodmenu> menu=[
    Foodmenu("กุ้งเผา","5000"),
    Foodmenu("กระเพรา","80"),
    Foodmenu("ส้มตำ", "60")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เมนูอาหาร"),
        ),
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
          Foodmenu food=menu[index];
          return ListTile(
            title: Text(food.name,style: TextStyle(fontSize: 20),),
            subtitle: Text("ราคา"+food.price+"บาท"),
          );
        }));
  }
}
