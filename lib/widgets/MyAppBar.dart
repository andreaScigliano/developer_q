import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'AppBarCard.dart';

class MyAppBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch){
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0.0,1.0),
          blurRadius: 10.0
        )
      ],
      color: Colors.green,
      border: Border(
        top: BorderSide(color: Colors.blueGrey[600],width: 2.5)
      ) 
      ),
      height: screenSize.height*.1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarCard(
                valore: 2,
                borderRightWidth: 2.5,
                name: "USERS",
                myIcon: Icons.account_box,
              ),
            AppBarCard(
                valore: 2,
                borderRightWidth: 2.5,
                name: "JOY",
                myIcon: Icons.apartment,
              ),
              AppBarCard(
                valore: 2,
                name: "CAPITAL",
                myIcon: Icons.account_balance_wallet,
              )
          ],
        ),
    );
  }
}