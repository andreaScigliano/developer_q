import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../widgets/Button.dart';
final _myNameProvider = StateProvider<int>((ref)=>4);


class CounterState extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch){
    final myName = watch(_myNameProvider).state;
    return Column(
      children: [
        Text("${myName.toString()}"),
        MyButton(
          onPress: ()=> increment(context),
          text: "increment"
      )
      ],
    );
  }
  void increment(BuildContext context){
    context.read(_myNameProvider).state++;
  }
}