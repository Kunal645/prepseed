import 'package:flutter/material.dart';

Widget showAlertDialog(BuildContext context) {
  /*AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
    );*/
  showDialog(
    context: context,
    builder: (ctx) => const AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
    ),
  );
  return const AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
  );
}