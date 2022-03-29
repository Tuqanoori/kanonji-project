import 'package:flutter/material.dart';

class dostor extends StatefulWidget {
  const dostor({Key? key}) : super(key: key);

  @override
  _dostorState createState() => _dostorState();
}

class _dostorState extends State<dostor> {
  final List<Map<String, dynamic>> _allUsers = [
    { "name":
 " المادة1:جمهورية العراق دولة اتحادية واحدة مستقلة ذات سيادة كاملة، نظام الحكم فيها جمهوري نيابي برلماني ديمقراطي، وهذا الدستور ضامن لوحدة العراق",},
    { "name": "المادة2: اولا:- الاسلام دين الدولة الرسمي، وهو مصدر اساس للتشريع: - لا يجوز سن قانون يتعارض مع ثوابت احكام الاسلام. ب- لا يجوز سن قانون يتعارض مع مبادئ الديمقراطية ج- لا يجوز سن قانون يتعارض مع الحقوق والحريات الاساسية الواردة في ثانيا:- يضمن هذا الدستور الحفاظ على الهوية الاسلامية لغالبية الشعب العراقي، كما ويضمن كامل الحقوق هذا الدستور"},
    { "name": "المادة3: العراق بلد متعدد القوميات والاديان والمذاهب، وهو عضو مؤسس وفعال في جامعة الدول العربية وملتزم بميثاقها، وجزء من العالم الاسلامي", },
  ]; List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  } void _runFilter(String enteredKeyword) {
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

    return Scaffold(backgroundColor: Colors.white38,
      body:   Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [ Container(
      height: 70,
          width: 560,
          color: Colors.blueAccent,
          child:Row(mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,children:[Text(" الدستور", style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          )),SizedBox(
            width:180,
          ), IconButton(
            onPressed: () {  Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 15,),)]),
    ),
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
              itemBuilder: (context, index) => Card(

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
    ),

    );
  }
}