import 'package:flutter/material.dart';
import 'package:kanongi/searchhome.dart';

import 'comp search.dart';
import 'dostor.dart';
import 'dostorserch.dart';
import 'madanisearch.dart';
import 'morafaat.dart';
import 'okobatsearch.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
     body:  SingleChildScrollView(
    child: Column(
          children: [
            Container(
                height: 70,
                width: 560,
                color: Colors.blueAccent,
                child: Center(child:Text(" القوانين العراقية", style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                )),)
            ),SizedBox(height: 10,),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    width: 450,
                    color: Colors.white10,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon:Icon(Icons.clear),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) =>  searchhome ()));
                            },
                          ),
                          hintText: 'Search...',
                          ),
                    ),


                )),  SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(10),
              height: 120,
              width: 450,
              child: ElevatedButton(
                onPressed: () {Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) =>  search
                  ()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Column(children:[Text("البحث الشامل",style:TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  //fontFamily: 'Pacifico(1)'),
                ), ),Text("البحث عن كلمة او جملة في داخل كل القوانين",style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ), ),Text("او التشريعات",style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  //fontFamily: 'Pacifico(1)'),
                ), ),])
              ),),
            SizedBox(height: 5,),
        Container(
        padding: const EdgeInsets.all(10),
    //color: Colors.black45,
    height: 50,
    width: 450,
    child: ElevatedButton(
    onPressed: () {Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => destorpage
      ()));},
    style: ElevatedButton.styleFrom(
    primary: Colors.white,
    side: BorderSide(color: Colors.blue, width: 1),
    onPrimary: Colors.white,
    shape: new RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(10.0),
    ),
    ),
    child: Text("الدستور",style:TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    ), ),),
    ), SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 450,
              child: ElevatedButton(
                onPressed: () {Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) =>  madinisearch()));},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("القانون المدني  العراقي رقم40 لسنة1951",style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ), ),

              ),
            ), SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 450,
              child: ElevatedButton(
                onPressed: () {Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) =>  okobatsearch()));},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("قانون العقوبات رقم (111)لسنة 1969",style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ), ),
              ),
            ), SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 450,
              child: ElevatedButton(
                onPressed: () {Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => morafaaat()));},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("قانون المرافعات المدنية",style:TextStyle(
                  //fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ), ),
              ),
            ), SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 450,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("قانون اصول المحاكمات الجزائية",style:TextStyle(
                  //fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ), ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 450,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
                child: Text("قانون الشركات رقم (21)لسنة 1997",style:TextStyle(

                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,

                ), ),

              ),
            ),  SizedBox(height: 55,),])));
  }
}