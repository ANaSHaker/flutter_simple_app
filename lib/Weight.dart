import 'package:flutter/material.dart';
class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
   static int weight = 60;
   double mercuryWeight ;
  double venusWeight ;
  double marsWeight ;
  double jupiterWeight ;
  double saturnWeight;
  double uranusWeight ;
  double neptuneWeight ;


   Widget Planet (String asset,Color color,String title){
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title:Image.asset(asset,width: 100,height:90,),
              subtitle: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
            )
            /*
            */
          ],
        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF010C29),

      appBar : AppBar(
        title : Text("Simple App"),
    backgroundColor: Colors.black87,
    centerTitle: true,
    ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child:  Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius:BorderRadius.circular(25)
                  ),
                  alignment: Alignment.center,
                  height: 150,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Your Weight",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98), //unactive line
                          activeTrackColor: Colors.white,  // active line
                          thumbColor: Color(0xFFEB1555),      // ball of line
                          overlayColor: Color(0x29EB1000),   // shadow of ball
                          thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: weight.toDouble(),
                          min: 50.0,
                          max: 200.0,
                          onChanged: (double newValue) {
                            setState(() {
                              weight = newValue.round();
                               mercuryWeight = 0.38	* weight ;
                               venusWeight = 0.91	* weight ;
                               marsWeight = 0.38	* weight ;
                               jupiterWeight = 2.43* weight ;
                               saturnWeight = 0.93		* weight ;
                               uranusWeight = 0.92		* weight ;
                               neptuneWeight = 1.12 * weight ;

                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            weight.toString(),
                            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
                          ),
                          Text(
                            'kg',
                            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Planet("assets/mercury.png",Colors.brown,"your weight in Mercuru = $mercuryWeight"),
              Planet("assets/venus.png",Colors.amber,"your weight in Venus = $venusWeight"),
              Planet("assets/earth.png",Colors.blue,"your weight in Earth = $weight"),
              Planet("assets/mars.png",Colors.redAccent,"your weight in Mars = $marsWeight"),
              Planet("assets/Jupiter.png",Colors.brown,"your weight in Jupiter = $jupiterWeight"),
              Planet("assets/Saturn.png",Colors.orange,"your weight in Saturn = $saturnWeight"),
              Planet("assets/Uranus.png",Colors.blue,"your weight in Uranus = $uranusWeight"),
              Planet("assets/Neptune.png",Colors.deepPurple,"your weight in Neptune = $neptuneWeight"),

            ],
          )
        ],
      ),
    );
  }
}
