import 'package:flutter/material.dart';

class searchhome extends StatefulWidget {
  const searchhome({Key? key}) : super(key: key);

  @override
  _searchhomeState createState() => _searchhomeState();
}

class _searchhomeState extends State<searchhome> {
  final List<Map<String, dynamic>> _allUsers = [
    { "name":"اﻟﻘﺎﻧﻮن اﻟﻤﺪﻧﻲ اﻟﻌﺮاﻗﻲ رﻗﻢ 40 ﻟﺴﻨﺔ 1951",},
    { "name": "مادة1 : تسري النصوص التشريعية على جميع المسائل التي تتناولها هذه النصوص في لفظها او في فحواها.2 – فاذا لم يوجد نص تشريعي يمكن تطبيقه حكمت المحكمة بمقتضى العرف فاذا لم يوجد فبمقتضى مبادئ الشريعة الاسلامية الاكثر ملائمة لنصوص هذا القانون دون التقيد بمذهب معين فاذا لم يوجد فبمقتضى قواعد العدالة.– وتسترشد المحاكم في كل ذلك بالاحكام التي اقرها القضاء والفقه في العراق ثم في البلاد الاخرى التي تتقارب قوانينها مع القوانين العراقية"},
    { "name": "المادة2:لا مساغ للاجتهاد في موردة", },
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
    return Scaffold( backgroundColor: Colors.white,
    body:   Padding(
    padding: const EdgeInsets.all(10),
      child: Column(
        children: [ Container(
            height: 70,
            width: 560,
            color: Colors.blueAccent,
            child: Center(child:Row(mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,children:[Text(" القانون المدني  العراقي رقم40 لسنة1951", style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            )),SizedBox(
              width:40,
            ), IconButton(
              onPressed: () {  Navigator.pop(context);
              },
              icon:Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 15,),)]),)
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

