import 'package:flutter/material.dart';
class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age>  with SingleTickerProviderStateMixin {
  double year = 0.0;
  int day;
  int month;
  int days = 1;
  int months = 1;
  var selectedYear;
  String output = "";




  void _showPicker() {
    showDatePicker(
        context: context,
        firstDate: new DateTime(1900),
        initialDate: new DateTime(2020),
        initialDatePickerMode: DatePickerMode.year,
        lastDate: DateTime.now()).then((DateTime dt) {
      selectedYear = dt.year;
      calculateAge();
    });
  }

  void calculateAge() {
    setState(() {
      year = (2020 - selectedYear).toDouble() ;
      month =  (12- months);
      day =  (31 - days);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1D1E40),
      appBar : AppBar(
        title : Text("Simple App"),
        centerTitle: true,
        backgroundColor:Color(0XFF1D1E60),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child:  Container(
                decoration: BoxDecoration(
                  color: Color(0XFF1D1E60),
                  borderRadius:BorderRadius.circular(25)
                ),
                alignment: Alignment.center,
                height: 150,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        child : Text(
                          selectedYear != null
                              ? "you was born in \n ${selectedYear.toString()} "
                              : "Select your year of birth",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    onPressed: _showPicker,),

                  ],
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color(0XFF1D1E60),
                      borderRadius:BorderRadius.circular(25)
                  ),
                  alignment: Alignment.center,
                  height: 150,
                  width: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Month you born",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.chevron_left,size: 20,), onPressed:(){setState(() {if(months >1){months--;} else {return null;}}); },color: Colors.white,),
                          Text(months.toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          IconButton(icon: Icon(Icons.chevron_right), onPressed:(){setState(() {   if(months <12){months++;} else {return null;}}); },color: Colors.white,),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(4)),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0XFF1D1E60),
                      borderRadius:BorderRadius.circular(25)
                  ),
                  alignment: Alignment.center,
                  height: 150,
                  width: 190,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Day you born",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Padding(padding: EdgeInsets.all(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.chevron_left,size: 20,), onPressed:(){setState(() {   if(days >1){
                            days--;} else {return null;}}); },color: Colors.white,),
                          Text(days.toString(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          IconButton(icon: Icon(Icons.chevron_right), onPressed:(){setState(() {   if(days <31){
                            days++;} else {return null;}}); },color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child:  Container(
              decoration: BoxDecoration(
                  color: Color(0XFF1D1E60),
                  borderRadius:BorderRadius.circular(25)
              ),
              alignment: Alignment.center,
              height: 150,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(output == ""? "your age is" : output,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0XFF1D1E99),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: FlatButton(
                  child: new Text(
                    "Calculate",
                    style: new TextStyle(color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: (){
                    setState(() {
                      output = "your have ${year.toInt()} years $month month and $day day ";
                    });
                  },
                ),
          ),
            ),


        ],
      ),


    );
  }
}
