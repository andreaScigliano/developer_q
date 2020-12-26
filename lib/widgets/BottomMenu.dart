import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import '../_import.dart';

class BottomMenu extends ConsumerWidget {
  @override
  Widget build(BuildContext context,ScopedReader watch) {
    var indexState = watch(indexProvider.state);
    return BottomNavigationBar(
      currentIndex: indexState ,
      onTap: (index){
        context.read(indexProvider).setIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: "Team"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: "Task List"
        )
      ],
    );
  }
}