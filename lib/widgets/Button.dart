import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Function onPress ;
  final String text;

  @override
  const MyButton({
    Key key,
    @required this.onPress,
    @required this.text
  }):super(key: key);
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RawMaterialButton(
        onPressed: widget.onPress,
        child: Text(widget.text),
        fillColor: Colors.blue[200],
        
      ),
    );
  }
}