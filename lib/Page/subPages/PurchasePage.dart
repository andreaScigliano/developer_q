import '../../_import.dart';
import 'package:flutter/material.dart';


class PurchasePage extends StatefulWidget {
  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage>{
  
  var x = Colors.blueGrey[600];
  int q=0;

  List<Widget> m = [
    Container(
      height: 100,
      color:Colors.blueGrey[600],
      child: EmployeeFutureProvider()
    ),
    Container(
      height: 100,
      color:Colors.brown[400],
      child: Icon(Icons.access_time)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                child: Container(
                  child: Center(
                    child: Text("Dipendenti",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                  height: 40,
                  width: 100,
                  color: q==0?x:Colors.green[700],
              ),
                onTap: () {
                  fetchEmployees();
                  setState(() {
                    q=0;
                  });
                },
              ),
            ),
            Expanded(
              child: InkWell(
                child: Container(
                  child: Center( 
                    child:Text(
                      "Ufficio",
                      style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)
                    )
                  ),
                  height: 40,
                  width: 100,
                  color: q==1?x:Colors.green[700],
              ),
              onTap: () {
                setState(() {
                  q=1;
                });
              },
            ),
            ),
          ]),
          SizedBox(
            height: screenSize.height*.03,
          ),
            Container(
                width:screenSize.width,
                height: 500,
                child:m[q],
            )
      ]);
  }
}