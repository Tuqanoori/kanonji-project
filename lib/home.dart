import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kanongi/services.dart';
import 'package:kanongi/store.dart';

import 'hompage.dart';
import 'news.dart';
import 'note.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int index = 4;
  final screen = [
    services(),
    note(),
    store(),
    news(),
    homepage(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "imags/bag1.jpg",
              height: 40,
              width: 40,
              fit: BoxFit.contain,
            )),
        SizedBox(
          height: 8,
        ),
        Text(
          "الخدمات",
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ]),
      Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "imags/notbook.jpg",
              height: 40,
              width: 40,
              // fit: BoxFit.cover,
            )),
        SizedBox(
          height: 8,
        ),
        Text(
          "المفكرة",
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ]),
      Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "imags/store.jpg",
              height: 40,
              width: 40,
              //fit: BoxFit.cover,
            )),
        SizedBox(
          height: 8,
        ),
        Text(
          "المتجر",
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ]),
      Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "imags/newspaper.jpg",
              height: 40,
              width: 40,
              // fit: BoxFit.cover,
            )),
        SizedBox(
          height: 8,
        ),
        Text(
          "الاخبار",
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ]),
      Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              "imags/kanonji logo1.jpg",
              height: 40,
              width: 40,
              //fit: BoxFit.cover,
            )),
       // SizedBox(
        //  height: 8,),
        Text(
          "القوانين العراقية",
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ]),
    ];

    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: screen[index],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.blueAccent,
          buttonBackgroundColor: Colors.white,
          index: index,
          height: 60,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ));
  }
}
