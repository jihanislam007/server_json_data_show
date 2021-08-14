import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  var _postsJson = [];

  void fetchPosts() async {
    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      setState(() {
        _postsJson = jsonData;
      });
    } catch (err) {
      Fluttertoast.showToast(
        msg: "Please check the connectivity",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
    }

    @override
    void initState() {
      fetchPosts();
    }
  }

  /////////////////////////////////////////

  List people = [
    {
      "name": "Mizan",
      "about": "Mizan is a good person. he is the older member of his family"
    },
    {
      "name": "Julekha",
      "about":
          "Julekha is a good housewife. She is the hard worker member of his family"
    },
    {
      "name": "jewel",
      "about": "jewel is a good boy. he is the earnest member of his family"
    },
    {
      "name": "jihan",
      "about": "jihan is a good boy. he is the younger member of his family"
    },
    {
      "name": "Mizan",
      "about": "Mizan is a good person. he is the older member of his family"
    },
    {
      "name": "Julekha",
      "about":
          "Julekha is a good housewife. She is the hard worker member of his family"
    },
    {
      "name": "jewel",
      "about": "jewel is a good boy. he is the earnest member of his family"
    },
    {
      "name": "jihan",
      "about": "jihan is a good boy. he is the younger member of his family"
    }
  ];

  @override
  Widget build(BuildContext context) {
    fetchPosts();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Load server json data'),
          ),
          body:

              //connected data from server
          ListView.builder(
              itemCount: _postsJson.length,
              itemBuilder: (context, i) {
                final post = _postsJson[i];
                return Column(
                  children: [
                    //Text("Alhamdulillah $i"),
                    Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 10,
                        color: Colors.cyan,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Title : ${post["title"]} \n\nBody : ${post["body"]}\n"),
                        )),
                  ],
                );
              })

          /*ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            itemCount: _postsJson.length,
            //itemCount: people.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                color: Colors.cyan,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      minVerticalPadding: 25,
                      minLeadingWidth : 10,
                      //tileColor:  Colors.cyan,
                      */ /*title: Text(_postsJson[index]["title"],style: TextStyle(fontSize: 20),),
                      subtitle: Text(_postsJson[index]["body"]),*/ /*
                      title: Text(people[index]["name"],style: TextStyle(fontSize: 20),),
                      subtitle: Text(people[index]["about"]),

                      //alignment: Alignment(-1.2, 0),
                    ),
                  ],
                ),
              );
            }
            )*/

          ),
    );
  }
}
