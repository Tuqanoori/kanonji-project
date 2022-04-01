import 'package:flutter/material.dart';

class altemiz extends StatefulWidget {
  const altemiz({Key? key}) : super(key: key);

  @override
  _altemizState createState() => _altemizState();
}

class _altemizState extends State<altemiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SingleChildScrollView(
    child:Column (children:[ Container(
        height: 70,
        width: 560,
        color: Colors.blueAccent,
        child: Center(
          child:Row(mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,children:[ Text(
                  "قرارات التمييز",
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
      ),Container(
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
        child: Text("قرارات التمييز-مرافعات",style:TextStyle(
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
          child: Text("  قرارات التمييز-جزائي ",style:TextStyle(
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
          child: Text("قرارات التمييز-جنائي",style:TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,

          ), ),
        ),
      ), SizedBox(height: 5,),
      Container(
        padding: const EdgeInsets.all(10),
        //color: Colors.black45,
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
          child: Text("قرارات التمييز-احوال شخصية",style:TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            //fontFamily: 'Pacifico(1)'),
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
          child: Text("قرارات التمييز-تجاري",style:TextStyle(
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
        //color: Colors.black45,
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
          child: Text("قرارات التمييز-وقف",style:TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ), ),

        ),
      ),  SizedBox(height: 5,),Container(
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
          child: Text("قرارات التمييز-متفرقة",style:TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ), ),

        ),
      ),  SizedBox(height: 5,),Container(
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
          child: Text("قرارات التمييز-اثبات",style:TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ), ),

        ),
      ),  SizedBox(height: 5,),Container(
        padding: const EdgeInsets.all(10),
        //color: Colors.black45,
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
          child: Text("قرارات التمييز-اصلاح زراعي",style:TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ), ),

        ),
      ),   SizedBox(height: 5,),Container(
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
          child: Text("قرارات التمييز-ايجار عقار",style:TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,

          ), ),

        ),
      ),  SizedBox(height: 5,),Container(
        padding: const EdgeInsets.all(10),
        //color: Colors.black45,
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
          child: Text("قرارات التمييز-مواد شخصية",style:TextStyle(
            //fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ), ),

        ),
      ), SizedBox(height: 55,),])));
  }
}
