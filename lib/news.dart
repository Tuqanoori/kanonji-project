import 'package:flutter/material.dart';

class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);

  @override
  _newsState createState() => _newsState();
}

class _newsState extends State<news> {
  final String description = " مقال :المركز القانونية في "
      "القضاء الولائي و القضاء العادي" ;
  final String description2 = "الاليات القانونية لاسترداد الاموال.\nوالاصول المهربة للخارج في ضوء اتفاقية .\nالامم المتحده لمكافحة الفساد";
  final String description3 = "المحكمة الاتحادية العلبا:للحماية.\nدستوريه لحقوق الافراد الجتماعية.\nوالاقتصادية";
  final String description4 = "مقال:التبليغات القضائيةفي الخارج وامكانيه استعمال \nالطرق الاكترونيه.";
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
            child: Text(" الاخبار",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                )),
          )), SizedBox(
            height: 10,
          ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "imags/1494324337.jpg",
              height: 100,
              width: 100,
            ),
            SizedBox(
              width: 100,
            ),
            Column(    mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,children: [
              Container(
             //  height: 40,
                width: 200,
                child: new DescriptionTextWidget(text: description, trimLines: 2),
              ),
            //  SizedBox(height: 10,),
              Text(
                "2022-3-24 ",textAlign: TextAlign.left,
                style: TextStyle(
                  //fontStyle: FontStyle.italic,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  //fontFamily: 'Pacifico(1)'),
                ),
              ),
            ])
          ]),
      SizedBox(
        height: 5,
      ),
      Container(
        height: 1,
        width: 560,
        color: Colors.blue,
      ), Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "imags/953670013.jpg",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 150,
                ),
                Column(children: [
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 10),
                    child: new DescriptionTextWidget(text: description2, trimLines: 2),
                  ),

                  Text(
                    "2022-3-24 ",textAlign: TextAlign.start,
                    style: TextStyle(
                      //fontStyle: FontStyle.italic,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      //fontFamily: 'Pacifico(1)'),
                    ),
                  ),
                ])
              ]),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            width: 560,
            color: Colors.blue,
          ),SizedBox(
            height: 5,
          ), Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "imags/download (3).jpg",
                  height: 100,
                  width: 100,
                ),
               SizedBox(width: 150,),
                Column(children: [
                  Container(    width: 150,
                    child: new DescriptionTextWidget(text: description3, trimLines: 2),
                  ),
                  Text(
                    "2022-3-24 ", textAlign: TextAlign.start,
                    style: TextStyle(
                      //fontStyle: FontStyle.italic,

                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      //fontFamily: 'Pacifico(1)'),
                    ),
                  ),
                ])
              ]),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            width: 560,
            color: Colors.blue,
          ),SizedBox(
            height: 5,
          ), Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "imags/photo_2022-03-25_06-26-17.jpg",
                  height: 100,
                  width: 100,
                ),
                SizedBox(width: 150,),
                Column( mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Container(    width: 150,
                    child: new DescriptionTextWidget(text: description4, trimLines:4 ),
                  ),
                  Text(
                    "2022-3-24 ",textAlign: TextAlign.start,
                    style: TextStyle(
                      //fontStyle: FontStyle.italic,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      //fontFamily: 'Pacifico(1)'),
                    ),
                  ),
                ])
              ]),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            width: 560,
            color: Colors.blue,
          ),     SizedBox(
            height: 10,
          ),
    ])));
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({required this.text, required int trimLines});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 50) {
      firstHalf = widget.text.substring(0, 50);
      secondHalf = widget.text.substring(50, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
              children: <Widget>[
                new Text(flag ? ( "..."+firstHalf ) : (firstHalf + secondHalf)),
                new InkWell(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        flag ? "عرض المزيد" : "الغاءعرض المزيد",
                        style: new TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),SizedBox(
                  height: 100,)
              ],
            ),
    );
  }
}
