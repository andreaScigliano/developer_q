import '../../_import.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatefulWidget {
  @override
  _CharacterPageState createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyButton(
        onPress: ()=>
          showDialog(
            context: context,
            builder: (context) {
              return MyDialog();
            },
          )
        , 
        text: 'show dialog'
      ),
    );
  }
}