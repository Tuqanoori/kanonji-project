import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart' as dateo;
var lowname = TextEditingController();
var lowadress = TextEditingController();
var clientname= TextEditingController();
var clientadress= TextEditingController();
var totalamount = TextEditingController();
var explain = TextEditingController();
var amountpart = TextEditingController();

class mohami extends StatefulWidget {
  const mohami({Key? key}) : super(key: key);

  @override
  _mohamiState createState() => _mohamiState();
}

class _mohamiState extends State<mohami> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed2 = true;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = true;
  Future Add_data2() async {
    DateTime now = DateTime.now();
    String formattedDate = dateo.DateFormat('yyyy-MM-dd').format(now);
    String formattedDate2 = dateo.DateFormat('yyyy-MM-dd HH:mm:ss').format(now);

    var url = Uri.parse('http://localhost:3000/aadd');
    Map<String, String> headers = {"Content-type": "application/json"};

    String json = '{"lowname": "${lowname.text}",'
        ' "lowadress": "${lowadress.text}",'
        ' "clientname": "${clientname.text}",'
        ' "clientadress": "${clientadress.text}",'
        ' "totalamount": "${totalamount.text}",'
        ' "explain": "${explain.text}",'

        ' "amountpart": "${amountpart.text}"}';


    Response response = await post(url, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body1 = response.body;
    var data = jsonDecode(body1);
    print(data);
    var res = data["code"];

    if (res == null) {}
  }

  String? gender;
  String?  currency;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:SingleChildScrollView(
        child: Column(children:[ Container(
        height: 70,
        width: 560,
        color: Colors.blueAccent,
        child: Center(
        child:Row(mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,children:[Text(
    "عقد اتعاب محاماة",
    style: TextStyle(
    //fontStyle: FontStyle.italic,
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
    ),Container( width:360,child:Row(mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,children: [    Expanded(child:   ListTile(
                title: Text("محامي"),
                leading: Radio(
                    value: "محامي",
                    groupValue: gender,
                    onChanged: (value){
                      setState(() {
                        gender = value.toString();
                      });
                    }),)),    Expanded(child: ListTile(
                title: Text("محامية"),
                leading: Radio(
                    value: "محامية",
                    groupValue: gender,
                    onChanged: (value){
                      setState(() {
                        gender = value.toString();
                      });
                    }),
              )),Text(
                  ":كاتب العقد",
    textAlign:TextAlign.start ,
                  style: TextStyle(
                    //fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )),
              ])),
          Container(
              width: 450,
              height: 80,
              padding: const EdgeInsets.only(
                  left: 14.0, bottom: 18.0, top: 15.0),
              color: Colors.white10,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(textAlign: TextAlign.right,
                  //obscureText: true,
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ادخل اسمك',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,

                        //fontStyle: FontStyle.italic,
                      )),controller: lowname))),
 Container(
              width: 450,
              height: 80,
              padding: const EdgeInsets.only(
                  left: 14.0, bottom: 18.0, top: 15.0),
              color: Colors.white10,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(textAlign: TextAlign.right,
                      //obscureText: true,
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.multiline,
                      maxLines: 2,
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'ادخل عنوانك',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,

                            //fontStyle: FontStyle.italic,
                          )),controller: lowadress))),Container(
              width: 450,
              height: 80,
              padding: const EdgeInsets.only(
                  left: 14.0, bottom: 18.0, top: 15.0),
              color: Colors.white10,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(textAlign: TextAlign.right,
                      //obscureText: true,
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.multiline,
                      maxLines: 2,
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'ادخل اسم الموكل',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,

                            //fontStyle: FontStyle.italic,
                          )),controller: clientname))),Container(
              width: 450,
              height: 80,
              padding: const EdgeInsets.only(
                  left: 14.0, bottom: 18.0, top: 15.0),
              color: Colors.white10,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(textAlign: TextAlign.right,
                      //obscureText: true,
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.multiline,
                      maxLines: 2,
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'ادخل عنوان الموكل',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,

                            //fontStyle: FontStyle.italic,
                          )),controller: clientadress))),
          Container( width: 450,child: Row(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,children: [Expanded(child: Column(children:[   ListTile(
                  title: Text("دينار عراقي"),
                  leading: Radio(
                      value: "دينار عراقي",
                      groupValue: currency,
                      onChanged: (value){
                        setState(() {
                          currency = value.toString();
                        });
                      }),),     ListTile(
                  title: Text("دولارامريكي"),
                  leading: Radio(
                      value: "دولارامريكي",
                      groupValue: currency,
                      onChanged: (value){
                        setState(() {
                          currency = value.toString();
                        });
                      }),
                )],)
                ),Expanded(child:Container(
                    width: 200,
                    height: 80,
                    padding: const EdgeInsets.only(
                        left: 14.0, bottom: 18.0, top: 15.0),
                    color: Colors.white10,
                    child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(textAlign: TextAlign.right,
                            //obscureText: true,
                            textDirection: TextDirection.rtl,
                            keyboardType: TextInputType.multiline,
                            maxLines: 2,
                            decoration:const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'ادخل قيمة الاتعاب الكلية',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 15,

                                  //fontStyle: FontStyle.italic,
                                )),controller:totalamount )))),])),Container(
              width: 450,
              height: 100,
              color: Colors.white10,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(textAlign: TextAlign.right,
                      //obscureText: true,
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.multiline,
                      maxLines: 2,
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'ادخل شرح القضية',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,

                            //fontStyle: FontStyle.italic,
                          )),controller: explain))),
          Container(
              width: 450,
              height: 50,
              color: Colors.white10,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(textAlign: TextAlign.right,
                      //obscureText: true,
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.multiline,
                      maxLines: 2,
                      decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'ادخل المبلغ المستلم من الموكل كمقدمة',
                          labelStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,

                            //fontStyle: FontStyle.italic,
                          )),controller:amountpart ))), SizedBox(
            height: 10,
          ),Container(
          //color: Colors.black45,
            height:30,
            width:450,
            child: ElevatedButton(
              child: new Text('انشاء العقد', maxLines: 2, overflow: TextOverflow.ellipsis,style:TextStyle(
                //fontStyle: FontStyle.italic,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                //fontFamily: 'Pacifico(1)'),
              ),),
              // textColor: Colors.white,
              // 2
              style: ElevatedButton.styleFrom(
                primary: _hasBeenPressed2 ? Colors.blueAccent : Colors.blueAccent,
                side: BorderSide(color: Colors.white60, width: 1),
                onPrimary: Colors.black12,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),

                // 3
              ),
              onPressed: () => {
                setState(() {
                  _hasBeenPressed2 = !_hasBeenPressed2;
                  Add_data2();
                })
              },
            ))

    ])));
  }
}
