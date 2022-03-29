import 'package:flutter/material.dart';

class note extends StatefulWidget {
  const note({Key? key}) : super(key: key);

  @override
  _noteState createState() => _noteState();
}

class _noteState extends State<note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[  //SizedBox(
          //height:40,
       // ),
        Center(child:Text("المفكرة",style: TextStyle(
        //fontStyle: FontStyle.italic,
        color: Colors.blue,
        fontWeight: FontWeight.w500,
        fontSize: 25,),)), SizedBox(
          height:350,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,children:[   SizedBox(
          width: 350,
        ),Container(
              //alignment: Alignment.topLeft,
              // padding: const EdgeInsets.all(10),
              //margin: EdgeInsets.only( right: 1),
              height: 50,
              width: 50,
              child: ElevatedButton(

                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  side: BorderSide(color: Colors.blue, width: 1),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                ),

                child: Icon(Icons.add,color: Colors.white,size: 30,),
                //fontStyle: FontStyle.italic,

                //fontFamily: 'Pacifico(1)'),
              ), ),])])
    );
  }
}
