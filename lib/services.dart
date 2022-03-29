import 'package:flutter/material.dart';
import 'package:kanongi/setting.dart';
import 'package:kanongi/wizraa.dart';

import 'alithadya.dart';
import 'altemiz.dart';
import 'altoraa.dart';
import 'aoamer.dart';
import 'araith.dart';
import 'dev.dart';
import 'mohami.dart';

class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  _servicesState createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child:Column(children: [
      Container(
          height: 70,
          width: 560,
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              "الخدمات الاضافية",
              style: TextStyle(
                //fontStyle: FontStyle.italic,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
          )),
      SizedBox(
        height: 10,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //alignment: Alignment.topLeft,
              // padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 1),
              height: 150,
              width: 150,
              child: ElevatedButton(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const altemiz ()));},
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black38, //Defines shadowColor
                  primary: Colors.white,
                  side: BorderSide(color: Colors.black, width: 1),
                  onPrimary: Colors.white,

                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                ),

                child: Column(children: [
                  Image.asset(
                    "imags/tamyiz.jpg",
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    "قرارات التمييز",
                    style: TextStyle(
                      //fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ]),
                //fontStyle: FontStyle.italic,

                //fontFamily: 'Pacifico(1)'),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              //alignment: Alignment.topLeft,
              // padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 1),
              height: 150,
              width: 150,
              child: ElevatedButton(
                onPressed: () {  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const alithadya()));},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.black, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                ),

                child: Column(children: [
                  Image.asset(
                    "imags/mahkama.jpg",
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    "قرارات المحكمه الاتحادية \nالعليا",
                    style: TextStyle(
                      //fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ]),
                //fontStyle: FontStyle.italic,

                //fontFamily: 'Pacifico(1)'),
              ),
            ),
          ]),SizedBox(
            height: 10,
          ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 1),
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const althora ()));},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black38, //Defines shadowColor
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 1),
                      onPrimary: Colors.white,

                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),

                    child: Column(children: [
                      Image.asset(
                        "imags/althora.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "قرارات مجلس قيادة الثورة\nالمنحل",
                        style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ]),
                    //fontStyle: FontStyle.italic,

                    //fontFamily: 'Pacifico(1)'),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  //alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 1),
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const  wizraa()));},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 1),
                      onPrimary: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),

                    child: Column(children: [
                      Image.asset(
                        "imags/wizraa.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "قرارات مجلس الوزراء",
                        style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ]),
                    //fontStyle: FontStyle.italic,

                    //fontFamily: 'Pacifico(1)'),
                  ),
                ),
              ]),SizedBox(
            height: 10,
          ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 1),
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const araith()));},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black38, //Defines shadowColor
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 1),
                      onPrimary: Colors.white,

                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),

                    child: Column(children: [
                      Image.asset(
                        "imags/talabat.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "العرائض والطلبات",
                        style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ]),
                    //fontStyle: FontStyle.italic,

                    //fontFamily: 'Pacifico(1)'),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  //alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 1),
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const mohami ()));},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 1),
                      onPrimary: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),

                    child: Column(children: [
                      Image.asset(
                        "imags/mohami.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "انشاء عقد اتعاب محاماة",
                        style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ]),
                    //fontStyle: FontStyle.italic,

                    //fontFamily: 'Pacifico(1)'),
                  ),
                ),
              ]),SizedBox(
          height: 10,
        ),Container(
            //alignment: Alignment.topLeft,
            // padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 1),
            height: 150,
            width: 330,
            child: ElevatedButton(
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const awamer()));},
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black38, //Defines shadowColor
                primary: Colors.white,
                side: BorderSide(color: Colors.black, width: 1),
                onPrimary: Colors.white,

                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),

              child: Column(children: [
                Image.asset(
                  "imags/moikata.jpg",
                  height:100 ,
                  width:200,
                ),
                Text(
                  "اوامر سلطة الائتلاف المؤقتة",
                  style: TextStyle(
                    //fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ]),
              //fontStyle: FontStyle.italic,

              //fontFamily: 'Pacifico(1)'),
            ),
          ),SizedBox(
      height: 10,
    ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 1),
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const  setting()));},
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black38, //Defines shadowColor
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 1),
                      onPrimary: Colors.white,

                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),

                    child: Column(children: [
                      Image.asset(
                        "imags/setting.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "الاعدادات",
                        style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ]),
                    //fontStyle: FontStyle.italic,

                    //fontFamily: 'Pacifico(1)'),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  //alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 1),
                  height: 150,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const dev ()));},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 1),
                      onPrimary: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),

                    child: Column(children: [
                      Image.asset(
                        "imags/whatsapp.jpg",
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "التواصل مع مطور البرنامج",
                        style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ]),
                    //fontStyle: FontStyle.italic,

                    //fontFamily: 'Pacifico(1)'),
                  ),
                ),
              ]),SizedBox(
            height: 50,
          ),
    ]),));
  }
}
