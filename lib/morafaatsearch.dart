import 'package:flutter/material.dart';

class morafaatsearch extends StatefulWidget {
  const morafaatsearch({Key? key}) : super(key: key);

  @override
  _morafaatsearchState createState() => _morafaatsearchState();
}

class _morafaatsearchState extends State<morafaatsearch> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "name": "قانون المرافعات المدنية رقم 83 لسنة 1969",
    },
    {
      "name": "المادة1 يكون هذا القانون هو المرجع لكافة قوانين المرافعات والاجراءات اذا لم يكن فيها نص يتعارض معه صراحة ."
    },
    {
      "name": "االمادة2 الدعوى – طلب شخص حقه من اخر امام القضاء .",
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
              width: 560,
              color: Colors.blueAccent,
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(" قانون المرافعات رقم 83لسنة 1969", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                    SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_forward_rounded, color: Colors.white,
                        size: 15,),)
                  ]),
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
        ));
  }
}
