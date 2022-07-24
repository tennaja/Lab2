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
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App budsop"),
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("เมนูที่ ${index}"),
          );
        }));
  }
}
