//Login page
import 'package:developer_q/models/Client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../_import.dart';
class LoginPage extends ConsumerWidget {

  final TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context,ScopedReader watch) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                MyButton(
                  onPress: (){
                    var client = new Client(firstName: "andrea",id: 3);
                    DBProvider.db.newClient(client);
                  },
                  text: "insert"
                )
              ],
            )
              ),
            );
  }
}
