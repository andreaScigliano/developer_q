import 'package:flutter/material.dart';
import '../../_import.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> with SingleTickerProviderStateMixin{
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 100,
              child: TextField(
                controller: _controller,
              ),
            ),
          ),
          Center(
            child:MyButton(
              onPress: (){
              },
              text: "insert"
            )
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

