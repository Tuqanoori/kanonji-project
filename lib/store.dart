import 'package:flutter/material.dart';

class store extends StatefulWidget {
  const store({Key? key}) : super(key: key);

  @override
  _storeState createState() => _storeState();
}

class _storeState extends State<store> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed2 = false;
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
              child:Row(children: [SizedBox(
                  width: 10), IconButton(
                onPressed: () {
                },
                icon: // SizedBox(width: 15,),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 30,

                ),), SizedBox(
                width: 180),Center(
                child:Text(" المتجر",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ))), SizedBox(
                width: 150,
              ),  IconButton(
                onPressed: () {
                  },
                icon: // SizedBox(width: 15,),
                Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 30,

                ),),]),
            )), SizedBox(
      height: 10,
    ),Column(mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end, children:[
          Card(
        elevation: 2,
        child: Container(
        height:150,
        width: 450,
        child:   Column(mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,children: [
        Row(mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,children: [

          Column(children: [
            Column(children: [
              Text(" الشخص المعنوي في القانون والقضاء\nالعراقيين",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  )),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,children: [Container(
                //color: Colors.black45,
                  height: 20,
                  width:70,
                  child: ElevatedButton(
                    child: new Text('شراء',style:TextStyle(
                      //fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      //fontFamily: 'Pacifico(1)'),
                    ),),
                    // textColor: Colors.white,
                    // 2
                    style: ElevatedButton.styleFrom(
                      primary: _hasBeenPressed ? Colors.white60 : Colors.blueAccent,
                      side: BorderSide(color: Colors.white60, width: 1),
                      onPrimary: Colors.white60,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),

                      // 3
                    ),
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                      })
                    },
                  )
              ), SizedBox(
                width: 50,
              ),Text("5000 دينار عراقي",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  )),

            ]),
              ]),

            ]),
              /* SizedBox(
            width: 10,
          ),*/
              Container(
            child: Image.asset(
              "imags/photo_2022-03-25_18-18-09.jpg",
              height: 100,
              width: 55,
            ),
          ), ]),Expanded(
              child: Divider(
                color: Colors.black12,
                height: 50,
              )),Center(child:Row(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,children: [Text("القاضي حسين محي الدين طهماس",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              )),Text("الكاتب",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              )),]),)
    ]),
    ),
    ),   Card(
                  elevation: 2,
                  child: Container(
                    height:150,
                    width: 450,
                    child:   Column(mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,children: [
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,children: [

                                Column(children: [
                                  Column(children: [
                                    Text(" شرح احكام تسجيل المكائن والتصرفات\nالقانونية الواردة عليها",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        )),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.end,children: [Container(
                                          //color: Colors.black45,
                                            height: 20,
                                            width:70,
                                            child: ElevatedButton(
                                              child: new Text('شراء',style:TextStyle(
                                                //fontStyle: FontStyle.italic,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                //fontFamily: 'Pacifico(1)'),
                                              ),),
                                              // textColor: Colors.white,
                                              // 2
                                              style: ElevatedButton.styleFrom(
                                                primary: _hasBeenPressed3 ? Colors.white60 : Colors.blueAccent,
                                                side: BorderSide(color: Colors.white60, width: 1),
                                                onPrimary: Colors.white60,
                                                shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(5.0),
                                                ),

                                                // 3
                                              ),
                                              onPressed: () => {
                                                setState(() {
                                                  _hasBeenPressed3 = !_hasBeenPressed3;
                                                })
                                              },
                                            )
                                        ), SizedBox(
                                          width: 50,
                                        ),Text("6000 دينار عراقي",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blue,
                                            )),

                                        ]),
                                  ]),

                                ]),
                                /* SizedBox(
            width: 10,
          ),*/
                                Container(
                                  child: Image.asset(
                                    "imags/photo_2022-03-25_18-30-13.jpg",
                                    height: 100,
                                    width: 55,
                                  ),
                                ), ]),Expanded(
                              child: Divider(
                                color: Colors.black12,
                                height: 50,
                              )),Center(child:Row(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,children: [Text("كاتب العدل مؤيد حبيب سعد",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  )),Text("الكاتب",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                  )),]),)
                        ]),
                  ),
                ),   Card(
                  elevation: 2,
                  child: Container(
                    height:150,
                    width: 450,
                    child:   Column(mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,children: [
                          Row(mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,children: [

                                Column(children: [
                                  Column(children: [
                                    Text(" شرح التشريع العسكري العراقي مظريا \nوعمليا",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        )),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.end,children: [Container(
                                          //color: Colors.black45,
                                            height: 20,
                                            width:70,
                                            child: ElevatedButton(
                                              child: new Text('شراء',style:TextStyle(
                                                //fontStyle: FontStyle.italic,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                //fontFamily: 'Pacifico(1)'),
                                              ),),
                                              // textColor: Colors.white,
                                              // 2
                                              style: ElevatedButton.styleFrom(
                                                primary: _hasBeenPressed2 ? Colors.white60 : Colors.blueAccent,
                                                side: BorderSide(color: Colors.white60, width: 1),
                                                onPrimary: Colors.white60,
                                                shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(5.0),
                                                ),

                                                // 3
                                              ),
                                              onPressed: () => {
                                                setState(() {
                                                  _hasBeenPressed2= !_hasBeenPressed2;
                                                })
                                              },
                                            )
                                        ), SizedBox(
                                          width: 50,
                                        ),Text("15000 دينار عراقي",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.blue,
                                            )),

                                        ]),
                                  ]),

                                ]),
                                /* SizedBox(
            width: 10,
          ),*/
                                Container(
                                  child: Image.asset(
                                    "imags/tshreh.jpg",
                                    height: 100,
                                    width: 80,
                                  ),
                                ), ]),Expanded(
                              child: Divider(
                                color: Colors.black12,
                                height: 50,
                              )),Center(child:Row(mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,children: [Text("القاضي العسكري كارزان صبحي نوري ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  )),Text("الكاتب",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                  )),]),)
                        ]),
                  ),
                ),]),SizedBox(
            height: 100,)])));
  }
}
