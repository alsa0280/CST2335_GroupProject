import 'package:flutter/material.dart';

class PurchaseOfferPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PurchaseOfferPageState();
  }

}

class PurchaseOfferPageState extends State<PurchaseOfferPage> {

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
        title: Text("Purchase List")
      ),
        body: Center (
            child:
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Purchase info...", style: titleFontStyle)
                ]
            )
        )
    );
  }

}