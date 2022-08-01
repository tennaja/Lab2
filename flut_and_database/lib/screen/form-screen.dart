import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  FormScreen({Key? key}) : super(key: key);
  final formkey = GlobalKey<FormState>();
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
                validator: (String str){
                  if(str.isEmpty){
                    return "กรุณาป้อนชื่อรายการ";
                  }
                  if(double.parse(str)){
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
                    fillColor:  Colors.grey,
                    focusColor: Colors.grey,
                    labelText: "จำนวนเงิน",
                    enabledBorder: OutlineInputBorder(
                   borderSide: const BorderSide(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),),
                ),
                keyboardType: TextInputType.number,
                validator: (String str){
                    if(str.isEmpty){
                    return "กรุณาป้อนจำนวนเงิน";
                  }
                  return null;
                },
            ),
            
                SizedBox(
                  height : 20 
        
                ),
                FlatButton(
                  child: Text("เพิ่มข้อมูล"),
                  color: Colors.yellowAccent,
                  onPressed: (){
                    if(formkey.currentState.validate()){
                    Navigator.pop(context);}
                  },
                  )
              ],
            ),
          ),
        ));
  }
}
