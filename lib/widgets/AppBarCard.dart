import 'package:flutter/material.dart';

class AppBarCard extends StatelessWidget {
  final int valore;
  final double borderRightWidth;
  final String name;
  final IconData myIcon;
  const AppBarCard(
    {
      Key key,
      @required this.valore,
      this.borderRightWidth = 0,
      this.name,
      this.myIcon
    }
  ):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey[800],
          border: Border(
            right: BorderSide(color: Colors.blueGrey[600],width: borderRightWidth)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Icon(
                        myIcon,
                        size: 35,
                      )
                    )
                  ),
                  Expanded(
                    child: Column(
                    children: [
                    Text(valore.toString()),
                    Text(name,style: TextStyle(fontWeight:FontWeight.w900,color: Colors.white,fontSize: 15 )),
                      ],
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}