import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}



class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {


  bool values1 =false;
  bool values2 = false;



  void values1Changed (bool ? value) => setState(() => values1 = value!);
  void values2Changed (bool ? value) => setState(() => values2 = value!);
    

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("how Are you"),
      ),
      body: Container(
        child:Center(
          child:Column(
            children: [
              Checkbox(value: values1, onChanged: values1Changed),
              CheckboxListTile(value: values2, onChanged: values2Changed,
              title: Text("Hello"),
              controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text("Subtitle"),
              secondary: Icon(Icons.archive),
              activeColor: Colors.red),
            ]
            ) ,
            )

            ),
    );
  }
}
