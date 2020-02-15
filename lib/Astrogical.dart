import 'package:flutter/material.dart';
class Astrogical extends StatefulWidget {
  @override
  _AstrogicalState createState() => _AstrogicalState();
}

class _AstrogicalState extends State<Astrogical> {
  var AstrogicalList=[
    {
      "title":"Math 1 ",
      "image":"images/math.png",
    },
    {
      "title":"Computer Structure",
      "image":"images/cpp.png",
    },
    {
      "title":"Huminaty",
      "image":"images/logo.jpg",
    },
    {
      "title":"Physics",
      "image":"images/physics.png",
    },
    {
      "title":"Computer Science",
      "image":"images/cs.png",
    },
    {
      "title":"English",
      "image":"images/English.png",
    },

    {
      "title":"Math Section ",
      "image":"images/math.png",
    },

    {
      "title":"Huminaty Section",
      "image":"images/logo.jpg",
    },
    {
      "title":"Physics Section",
      "image":"images/physics.png",
    },
    {
      "title":"Computer Science Section",
      "image":"images/cs.png",
    },
    {
      "title":"English Section",
      "image":"images/English.png",
    },
    {
      "title":"c++ Section",
      "image":"images/cpp.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: AstrogicalList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return SingleAstrogicalList(
          prodtitle: AstrogicalList[index]['title'],
          prodImage: AstrogicalList[index]['image'],


        );
      },
    );
  }
}

class SingleAstrogicalList extends StatelessWidget {
  final prodtitle;
  final prodImage;

  SingleAstrogicalList({
    this.prodtitle,
    this.prodImage,

  });



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: const EdgeInsets.only(left: 12.0, top: 8.0,bottom: 8.0,right: 12.0),
      child:  Hero(
        tag:prodtitle,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PageDetails(
                pageTitle: prodtitle,
                pageImage: prodImage,
              )));
            },
            child: GridTile(
              footer: Container(
                height: 50.0,
                color: Colors.black,
                child: ListTile(
                  title: Text(prodtitle, style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 16.0),
                    textAlign: TextAlign.center, ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image(image: AssetImage(prodImage)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}





class PageDetails extends StatefulWidget {

  final pageTitle;
  final pageImage;
  PageDetails({this.pageTitle, this.pageImage, });
  @override
  _PageDetailsState createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.black,
          title: Text(widget.pageTitle, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
          ),
          centerTitle: true,
        ),
        body: Column()
    );
  }
}

