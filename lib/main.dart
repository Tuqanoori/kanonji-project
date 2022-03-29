import 'package:flutter/material.dart';

import 'alithadya.dart';
import 'altemiz.dart';
import 'araith.dart';
import 'dev.dart';
import 'home.dart';
import 'mohami.dart';

void main() {
  runApp(MaterialApp(home:home()));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    // TODO: implement initState
    super.initState();

    go();
  }

  Future go() async {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => home()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image.asset(
                        "imags/kanonji logo1.jpg",
                        height: 200,
                        width: 200,
                      )),
                ])));
  }
}
