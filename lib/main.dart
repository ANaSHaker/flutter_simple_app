import 'package:flutter/material.dart';

import 'Age.dart';
import 'Weight.dart';

void main() => runApp(MaterialApp(
  title : "Simple",
  debugShowCheckedModeBanner: false,
  home : Home(),
));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

Widget myCard(String title,Color color,Function press){
  return  Padding(
    padding: EdgeInsets.only(top:70),
    child:  Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(90),
          topLeft: Radius.circular(90),
        ),
      ),
      height: 270,
      width: MediaQuery.of(context).size.width,
      child: FlatButton(onPressed: press,
          child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30), textAlign: TextAlign.center,)) ,
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1D1E70),
      appBar : AppBar(
        title : Text("Simple App"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          myCard("Your Age",Colors.deepPurpleAccent,(){ Navigator.push(context, MaterialPageRoute(builder: (context) => Age(),),);}),
          myCard("Your Weight in\n planets",Colors.deepPurpleAccent.shade700,(){ Navigator.push(context, MaterialPageRoute(builder: (context) => Weight(),),);}),
        ],
      ),
    );
  }
}


