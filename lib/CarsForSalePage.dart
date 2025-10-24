import 'package:flutter/material.dart';

class CarsForSalePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CarsForSalePageState();
  }

}

class CarsForSalePageState extends State<CarsForSalePage> {

  var titleFontStyle = TextStyle(fontSize: 20);
  var buttonFontStyle = TextStyle(fontSize: 15, color: Colors.black);

  var customers = <String>['Steve', 'Jobs'];

  Widget? ListPage(){
    return null;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Car List")
      ),
        body: Center (
            child:
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Car info...", style: titleFontStyle)
                ]
            )
        )
    );
  }

}