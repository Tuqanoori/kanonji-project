import 'package:flutter/material.dart';

class araith extends StatefulWidget {
  const araith({Key? key}) : super(key: key);

  @override
  _araithState createState() => _araithState();
}

class _araithState extends State<araith> {
  bool _hasBeenPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Colors.white,body:Column(children:[ Container(
    height: 70,
    width: 560,
    color: Colors.blueAccent,
    child: Center(
    child:Row(mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,children:[ Text(
        "انشاء حساب جديد",
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
    ), Column(children: [
          Image.asset(
            "imags/12.jpg",
            height: 150,
            width: 250,
          ), Text("هذا القسم من البرنامج مخصص للمحامين و الحقوقيين فقط,  \nولاجل ذلك فلا يمكن الدخول اليه الا برفع صورة هوية محاماة, حقوقي \n, طالب قانون (الخ) علما ان الصورة يتم حذفها بعد التاكد منها",style:TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black38,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ), ),  SizedBox(
          height:200,
        ),Container(
            height:50,
            width:350,
            child: ElevatedButton(
              child: new Text(' اختيار حساب جديد', maxLines: 2, overflow: TextOverflow.ellipsis,style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
              // textColor: Colors.white,
              // 2
              style: ElevatedButton.styleFrom(
                primary: _hasBeenPressed2 ? Colors.blueAccent : Colors.blueAccent,
                side: BorderSide(color: Colors.white60, width: 1),
                onPrimary: Colors.blueAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),

                // 3
              ),
              onPressed: () => {
                setState(() {
                  _hasBeenPressed2 = !_hasBeenPressed2;
                })
              },
            )
        ),
    ]),
    ]));
  }
}
