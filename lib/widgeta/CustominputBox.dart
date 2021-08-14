import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class CustomInputBox extends StatefulWidget {
  TextEditingController controller;
  String label;
  String inputHint;
  CustomInputBox({required this.controller,required this.label, required this.inputHint});
  //CustomInputBox({ required this.controller,required this.label, required this.inputHint}) : super(key: key);

  @override
  _CustomInputBoxState createState() => _CustomInputBoxState();
}

class _CustomInputBoxState extends State<CustomInputBox> {
  get controller => null;

  @override
  Widget build(BuildContext context) {
    return


      Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 8),
              child: Text(
                widget.label,
                style: TextStyle(
                  fontFamily: 'product Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(
                    128,
                    128,
                    0,
                    1,
                  ),
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: TextFormField(
            controller: controller,
            //onEditingComplete: () {},
            style: TextStyle(
                fontFamily: 'product Sans',
                fontSize: 20,
                color: Color.fromRGBO(
                  128,
                  128,
                  0,
                  1,
                ),
                fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              hintText: widget.inputHint,
              hintStyle: TextStyle(
                  fontFamily: 'product Sans',
                  fontSize: 16,
                  color: Color.fromRGBO(
                    71,
                    70,
                    69,
                    1.0,
                  ),
                  fontWeight: FontWeight.normal),
              contentPadding:
              EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              focusColor: Color.fromRGBO(
                9,
                9,
                9,
                1.0,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(
                      128,
                      128,
                      0,
                      1,
                    ),
                  )),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(
                      0,
                      0,
                      0,
                      1.0,
                    ),
                  )),
              //suffixIcon: isSubmitted==true? Visibility(child: (SvgPicture)),
            ),
          ),
        )
      ],
    );
  }
}
