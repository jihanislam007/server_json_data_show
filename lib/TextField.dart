import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:server_json_data_show/widgeta/CustominputBox.dart';
import 'package:server_json_data_show/widgeta/InputFieldArea.dart';

class TextFields extends StatefulWidget {
  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController PhoneController = new TextEditingController();

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _EmailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Input Field")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              CustomInputBox(controller: _usernameController,label: "name", inputHint: "type your name"),
              CustomInputBox(controller: _passwordController,label: "Email", inputHint: "type your Email"),
              CustomInputBox(controller: PhoneController,label: "Phone", inputHint: "type your Phone"),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term'),
              ),

              TextField(
                controller: emailController,
                obscureText: false,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'PLEASE ENTER YOUR EMAIL',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              InputFieldArea(
                controller: _EmailController,
                //obscureText: false,
                label: "Email",
                inputHint: "jihan@a.com",
              ),
              InputFieldArea(
                controller: _passwordController,
                //obscureText: false,
                label: "Password",
                inputHint: "passwordController",
              ),
              SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: double.infinity, height: 60),
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: _EmailController.text+"\n"+_passwordController.text,
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.SNACKBAR);
                    print('username: ${_usernameController.text}, password: ${_passwordController.text}, Email: ${_EmailController.text}');
                  },
                  child: Text("show me"),
                ),
              ),
              //Fluttertoast.showToast(msg: "namecontroller", toastLength: Toast.LENGTH_LONG);
            ],
          ),
        ),
      ),
    );
  }
}
