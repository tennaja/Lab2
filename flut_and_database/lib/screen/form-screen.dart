import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

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
                    fillColor:  Colors.grey,
                    focusColor: Colors.grey,
                    labelText: "ชื่อรายการ",
                    enabledBorder: OutlineInputBorder(
                   borderSide: const BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),),
                ),
                autofocus: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                  decoration: new InputDecoration(
                    fillColor:  Colors.grey,
                    focusColor: Colors.grey,
                    labelText: "จำนวนเงิน",
                    enabledBorder: OutlineInputBorder(
                   borderSide: const BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),),
                ),
                keyboardType: TextInputType.number,
            ),
            
                SizedBox(
                  height : 20 
        
                ),
                FlatButton(
                  child: Text("เพิ่มข้อมูล"),
                  color: Colors.yellowAccent,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  )
              ],
            ),
          ),
        ));
  }
}
