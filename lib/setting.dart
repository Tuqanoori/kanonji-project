import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SingleChildScrollView(
    child: Column(children:[ Container(
    height: 70,
    width: 560,
    color: Colors.blueAccent,
    child: Center(
    child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,children:[SizedBox(
          width: 110,
        ), Center(
        child:Text(
        "الاعدادات",
        style: TextStyle(
        //fontStyle: FontStyle.italic,
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
    ),
    ),),SizedBox(
    width:50,
    ), IconButton(
    onPressed: () {  Navigator.pop(context);
    },
    icon:Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 15,),)]),
    )),
    SizedBox(
    height: 10,
    ), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        IconButton(
    onPressed: () {},
    icon:Icon(Icons.text_fields,color: Colors.black38,size: 20,),),

      Center(
    child:Text(
    "تغير حجم الخط",
    style: TextStyle(
    //fontStyle: FontStyle.italic,
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 20,
    ))),
    IconButton(
    onPressed: () {},
    icon:Icon(Icons.arrow_forward_rounded,color: Colors.blueAccent,size: 20,),),

       ],), SizedBox(
        height: 15,
      ), Container(
        height: 1,
        width: 560,
        color: Colors.grey,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          IconButton(
            onPressed: () {},
            icon:Icon(Icons.text_fields,color: Colors.black38,size: 20,),),

          Center(
              child:Text(
                  "تغير نوع الخط",
                  style: TextStyle(
                    //fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ))),
          IconButton(
            onPressed: () {},
            icon:Icon(Icons.arrow_forward_rounded,color: Colors.blueAccent,size: 20,),),

        ],), SizedBox(
        height: 15,
      ), Container(
        height: 1,
        width: 560,
        color: Colors.grey,
      ),
    ])));

  }
}
