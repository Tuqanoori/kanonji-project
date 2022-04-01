import 'package:flutter/material.dart';

class penalcode extends StatefulWidget {
  const penalcode({Key? key}) : super(key: key);

  @override
  _penalcodeState createState() => _penalcodeState();
}

class _penalcodeState extends State<penalcode> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "name": "عنوان التشريع : قانون العقوبات رقم 111 لسنة 1969المصدر : الوقائع العراقية |رقم العدد : 1778| تاريخ العدد :15-12-1969",
    },
    {
      "name": "المادة1لا عقاب على فعل او امتناع الا بناء على قانون ينص على تجريمه وقت اقترافه ولا يجوز توقيع عقوبات او تدابير احترازية لم ينص عليها القانون"
    },
    {
      "name": "المادة2 1 – يسري على الجرائم القانون النافذ وقت ارتكابها ويرجع في تحديد وقت ارتكاب الجريمة الى الوقت الذي تمت فيه افعال تنفيذها دون النظر الى وقت تحقق نتيجتها.2 – على انه اذا صدر قانون او اكثر بعد ارتكاب الجريمة وقبل ان يصبح الحكم الصادر فيها نهائيا فيطبق القانون الاصلح للمتهم.",
    },
  ];
  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();

      // we use the toLowerCase() method to make it case-insensitive
    }
    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [ Container(
            height: 70,
           // width: 500,

            color: Colors.blueAccent,
            child :Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(" قانون العقوبات رقم (111)لسنة 1969", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
                 SizedBox(
                   width: 30),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_forward_rounded, color: Colors.white,
                      size: 15,),)
                ]),
          )),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) =>
                    Card(

                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueAccent, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(_foundUsers[index]['name']),


                      ),
                    ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),);
  }
}