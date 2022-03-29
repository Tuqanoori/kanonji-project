import 'package:flutter/material.dart';

class dev extends StatefulWidget {
  const dev({Key? key}) : super(key: key);

  @override
  _devState createState() => _devState();
}

class _devState extends State<dev> {  bool _hasBeenPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: Center(child:Column(mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,children:[
           ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(100)),
    child: Image.asset(
           "imags/dev.jpg",
           height: 200,
           width: 200,
         ),
           ), SizedBox(height: 5,),Container(
               //color: Colors.black45,
                 height:70,
                 width:150,
                 child: ElevatedButton(
                   child: new Text('جميع الحقوق محفوظة \nالمهندس علي ستار ', maxLines: 2, overflow: TextOverflow.ellipsis,style:TextStyle(
                     //fontStyle: FontStyle.italic,
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 15,
                     //fontFamily: 'Pacifico(1)'),
                   ),),
                   // textColor: Colors.white,
                   // 2
                   style: ElevatedButton.styleFrom(
                     primary: _hasBeenPressed2 ? Colors.white : Colors.white,
                     side: BorderSide(color: Colors.white60, width: 1),
                     onPrimary: Colors.white,
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
             ), SizedBox(height: 25,),Container(
               //color: Colors.black45,
                 height:60,
                 width:350,
                 child: ElevatedButton(
                   child: Column(children:[ SizedBox(height: 15,),Row(mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,children:[Icon(
                     Icons.call,
                     color: Colors.blue,
                     size: 15,
                   ),SizedBox(
                     width: 50,
                   ),new Text('07823352956', style:TextStyle(
                     //fontStyle: FontStyle.italic,
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 15,
                     //fontFamily: 'Pacifico(1)'),
                   ),),
                   ]),Text('WhatsApp,Viber,Telegram', style:TextStyle(
                     //fontStyle: FontStyle.italic,
                     color: Colors.black38,
                     fontWeight: FontWeight.w500,
                     fontSize: 15,
                     //fontFamily: 'Pacifico(1)'),
                   ),), SizedBox(height: 5,),]),
                   // textColor: Colors.white,
                   // 2
                   style: ElevatedButton.styleFrom(
                     primary: _hasBeenPressed2 ? Colors.white : Colors.white,
                     side: BorderSide(color: Colors.white60, width: 1),
                     onPrimary: Colors.white,
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
             ),  SizedBox(height: 25,),Container(
               //color: Colors.black45,
                 height:50,
                 width:350,
                 child: ElevatedButton(
                   child: Row(mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,children:[Icon(
                         Icons.email_outlined,
                         color: Colors.blue,
                         size: 15,
                       ),SizedBox(
                         width: 50,
                       ),new Text('alisattar.alshimmary@gmail.com', style:TextStyle(
                         //fontStyle: FontStyle.italic,
                         color: Colors.black,
                         fontWeight: FontWeight.w500,
                         fontSize: 15,
                         //fontFamily: 'Pacifico(1)'),
                       ),),
                       ]),
                   // textColor: Colors.white,
                   // 2
                   style: ElevatedButton.styleFrom(
                     primary: _hasBeenPressed2 ? Colors.white : Colors.white,
                     side: BorderSide(color: Colors.white60, width: 1),
                     onPrimary: Colors.white,
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
             ),SizedBox(height: 25,), Container(
               //color: Colors.black45,
                 height:30,
                 width:70,
                 child: ElevatedButton(
                   child: new Text('رجوع', maxLines: 2, overflow: TextOverflow.ellipsis,style:TextStyle(
                     //fontStyle: FontStyle.italic,
                     color: Colors.black,
                     fontWeight: FontWeight.w500,
                     fontSize: 15,
                     //fontFamily: 'Pacifico(1)'),
                   ),),
                   // textColor: Colors.white,
                   // 2
                   style: ElevatedButton.styleFrom(
                     primary: _hasBeenPressed2 ? Colors.white : Colors.white,
                     side: BorderSide(color: Colors.white60, width: 1),
                     onPrimary: Colors.white,
                     shape: new RoundedRectangleBorder(
                       borderRadius: new BorderRadius.circular(25.0),
                     ),

                     // 3
                   ),
                   onPressed: () => {
                     setState(() {
                       _hasBeenPressed2 = !_hasBeenPressed2;Navigator.pop(context);
                     })
                   },
                 )
             ),]),)
    );
  }
}
