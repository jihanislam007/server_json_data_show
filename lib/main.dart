import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:server_json_data_show/widgeta/InputFieldArea.dart';

import 'DataPostInputField.dart';
import 'HomePage.dart';
import 'TextField.dart';
import 'postdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
            //HomePage(),
            //PostData(),
            //DataPostInputField()
            TextFields()
            //MyHomePage()
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _EmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            InputFieldArea(
              controller: _usernameController,
              //obscureText: false,
              label: "Name",
              inputHint: "jihan",
            ),
            InputFieldArea(
              controller: _passwordController,
              //obscureText: false,
              label: "Email",
              inputHint: "jihan@a.com",
            ),
            InputFieldArea(
              controller: _EmailController,
              //obscureText: false,
              label: "Email",
              inputHint: "jihan@a.com",
            ),
            RaisedButton(
              child: Text("get Data"),
              onPressed: () {
                Fluttertoast.showToast(
                    msg: _usernameController.text+"\n"+_passwordController.text,
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM_LEFT);
                // example how to read the current text field values
                print('username: ${_usernameController.text}, password: ${_passwordController.text}, Email: ${_EmailController.text}');
              },
            ),
            Container(
                height: 100,
                child: Text(_usernameController.text),
              ),
            Container(child: Text(_passwordController.text)),
            Container(child: Text(_EmailController.text)),
          ],
        ));
  }
}
