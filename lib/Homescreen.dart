import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

    TextEditingController x = new TextEditingController();
    TextEditingController y = new TextEditingController();
    TextEditingController z = new TextEditingController();
class _HomescreenState extends State<Homescreen> {
  void add(){
      final a = double.parse(x.text) + double.parse(y.text);
      String s = a.toString();
      z.text = s;
  }
  void sub(){
      final a = double.parse(x.text) - double.parse(y.text);
      String s = a.toString();
      z.text = s;
  }
  void mul(){
      final a = double.parse(x.text) * double.parse(y.text);
      String s = a.toString();
      z.text = s;
  }
  void div(){
    try{
      final a = double.parse(x.text) / double.parse(y.text);
      String s = a.toString();
      z.text = s;
    }catch(exception){
      exception.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Calculator'),
      ),
      body:
       Column(children: [
        Padding(padding: EdgeInsets.only(top: 45,bottom: 15),
          child: TextField(
            keyboardType: TextInputType.number, 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
            controller: x,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter the number',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 45,bottom: 35),
          child: TextField(
            keyboardType: TextInputType.number, 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
            controller: y,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter the number',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: [
            new ElevatedButton(onPressed: add, child: 
              new Text('+'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            new ElevatedButton(onPressed: sub, child: 
              new Text('-'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            new ElevatedButton(onPressed: div, child: 
              new Text('/'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            new ElevatedButton(onPressed: mul, child: 
              new Text('*'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 20,bottom: 50),
          child: TextField(
            controller: z,
            enabled: false,
            keyboardType: TextInputType.number, 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Answer',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ]),
    );
  }
}
