import 'dart:async';

import 'package:developer_q/Page/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Page/LayoutPageGame.dart';
//main entri point of the application
void main() {
  runApp(
    ProviderScope(
      child:MyApp()
    ));
}
// root app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
