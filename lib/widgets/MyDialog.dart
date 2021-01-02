import 'package:developer_q/widgets/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: screenSize.height*.88,
          width: screenSize.width*.88,
          child:MyButton(onPress: ()=>SystemNavigator.pop(), text: "exit")
        ),
      ),
    );
  }
}