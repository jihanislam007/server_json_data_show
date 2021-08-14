import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

class PostData extends StatefulWidget {

  @override
  _PostDataState createState() => _PostDataState();
}

class _PostDataState extends State<PostData> {

  final url = "https://jsonplaceholder.typicode.com/posts";

  void postData() async{
    try {
      final response = await post(Uri.parse(url), body: {
        "title": "Jihan",
        "body": "post body",
        "userId": "1"
      });
      print(response.body);
    }catch(er){
      Fluttertoast.showToast(
        msg: "Please check the connectivity",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
      child: ElevatedButton(
      onPressed: postData,
      child: Text("send post"),
    ),
    ),
    );
  }
}
