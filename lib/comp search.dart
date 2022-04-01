import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body:SingleChildScrollView(
    child: Column(children:[ Container(
    height: 70,
    width: 560,
    color: Colors.blueAccent,
    child: Center(
    child:Row(mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,children:[Text(
        "كل التشريعات",
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
    ),
    ),SizedBox(
    width:150,
    ), IconButton(
    onPressed: () {  Navigator.pop(context);
    },
    icon:Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 15,),)]),
    )),
    SizedBox(
    height: 10,
    ),  Container(
        width:460,child:TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Search', suffixIcon: Icon(Icons.search)),
      ),),SizedBox(
        height: 20,
      ),
      Text("البحث عن كلمة او جملة في داخل كل القوانين",style:TextStyle(
        //fontStyle: FontStyle.italic,
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ), ),Text("او التشريعات",style:TextStyle(
        //fontStyle: FontStyle.italic,
        color: Colors.black,
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ), ), Container(
        child: Image.asset(
          "imags/photo_2022-03-28_05-24-47.jpg",
          height: 300,
          width: 300,
        ),
      ),
    ])));
  }
}
