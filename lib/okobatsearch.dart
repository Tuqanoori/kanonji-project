import 'package:flutter/material.dart';
import 'package:kanongi/penalcode.dart';

class okobatsearch extends StatefulWidget {
  const okobatsearch({Key? key}) : super(key: key);

  @override
  _okobatsearchState createState() => _okobatsearchState();
}

class _okobatsearchState extends State<okobatsearch> {

  bool _hasBeenPressed = false;
  bool _hasBeenPressed2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Colors.white,body: SingleChildScrollView(
        child:Column(children: [
          Container(
              height: 70,
              width: 560,
              color: Colors.blueAccent,
              child: Center(
                child:Row(mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,children:[ Text(
                      "قانون العقوبات رقم (111)لسنة 1969",
                      style: TextStyle(
                        //fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),SizedBox(
                      width:80,
                    ), IconButton(
                      onPressed: () {  Navigator.pop(context);
                      },
                      icon:Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 15,),)]),
              )),
          SizedBox(
            height: 10,
          ),Column(children: [
            Image.asset(
              "imags/kanonji logo1.jpg",
              height: 150,
              width: 250,
            ),ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    width: 450,
                    // padding: const EdgeInsets.all(50),
                    color: Colors.white10,
                    child: TextField(
                      // obscureText: true,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          border: OutlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),),
                          labelText: 'ادخل رقم المادة القانونية لعرضها',
                          labelStyle: TextStyle(
                            color: Colors.black12,
                            fontSize: 18,

                            //fontStyle: FontStyle.italic,
                          ), focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),  )))),SizedBox(
              height: 10,
            ),
            Container(
              //color: Colors.black45,
                height: 40,
                width:450,
                child: ElevatedButton(
                  child: new Text('عرض المادة',style:TextStyle(
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
                      borderRadius: new BorderRadius.circular(25.0),
                    ),

                    // 3
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressed = !_hasBeenPressed;
                    })
                  },
                )
            ),SizedBox(
              height: 10,
            ),
            Container(
              //color: Colors.black45,
                height:40,
                width:450,
                child: ElevatedButton(
                  child: new Text(' قراءة القانون بالكامل و البحث عن كلمة فيها', maxLines: 2, overflow: TextOverflow.ellipsis,style:TextStyle(
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
                    onPrimary: Colors.blueAccent,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                    ),

                    // 3
                  ),
                  onPressed: () => {
                    setState(() {
                      _hasBeenPressed2 = !_hasBeenPressed2;
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => penalcode()));
                    })
                  },
                )
            ),
          ]),])));
  }
}
