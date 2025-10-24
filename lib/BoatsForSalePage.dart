import 'package:flutter/material.dart';

class BoatsForSalePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BoatsForSalePageState();
  }

}

class BoatsForSalePageState extends State<BoatsForSalePage> {

  var titleFontStyle = TextStyle(fontSize: 20);
  var buttonFontStyle = TextStyle(fontSize: 15, color: Colors.black);

  Widget? ListPage(){
    return null;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Boat List")
      ),
      body: Center (
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Boat info...", style: titleFontStyle)
              ]
            )
      )
    );
  }

}