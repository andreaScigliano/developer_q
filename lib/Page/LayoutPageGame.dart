import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../_import.dart';
import './subPages/ListPage.dart';

class LayoutPageGameState extends ConsumerWidget {
  
  final pages = [
    CharacterPage(),
    TaskPage()
  ];

  @override
  Widget build(BuildContext context, ScopedReader watch){
    var indexState = watch(indexProvider.state);
    //saving the value of
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: PreferredSize(
          child: MyAppBar(),
          preferredSize: Size(screenSize.width, screenSize.height*.8),
        ),
        body: pages[indexState],
        bottomNavigationBar:BottomMenu() ,
      ),
    );
  }
}