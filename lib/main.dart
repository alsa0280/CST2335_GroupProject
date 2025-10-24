import 'package:flutter/material.dart';

import 'BoatsForSalePage.dart';
import 'CarsForSalePage.dart';
import 'CustomerListPage.dart';
import 'PurchaseOfferPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'customerList' : (context) => CustomerListPage(),
        'carsForSale' : (context) => CarsForSalePage(),
        'boatsForSale' : (context) => BoatsForSalePage(),
        'purchaseOffer' : (context) => PurchaseOfferPage()
      },
      title: 'CST2355 Group Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useSystemColors: true,
      ),
      home: const MyHomePage(title: 'CST2355 Group Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var homeButtonPadding = 5.0;
  var homeButtonTextStyle = TextStyle(fontSize: 30, color: Colors.black);
  var homeButtonFixedWidth = 300.0;

  Widget? returnFormattedHomeButton(String? routeName, String? buttonText){
    return Padding(
        padding: EdgeInsets.all(homeButtonPadding),
        child: Container(
            width: homeButtonFixedWidth,
            child:ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, routeName!);},
                child: Text(buttonText!, style: homeButtonTextStyle)
            )
        )
    );
  }

  Widget? returnFormattedImage(String? imageSource){
    return Padding(
      padding: EdgeInsets.all(15),
      child: CircleAvatar(
          radius: 150,
          backgroundImage: AssetImage(
              imageSource!
          )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // images row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                returnFormattedImage('images/boat.jpg')!,
                returnFormattedImage('images/car.jpg')!
              ]
            ),
            // first two buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                returnFormattedHomeButton("boatsForSale" , "Boat List")!,
                returnFormattedHomeButton("carsForSale" , "Car List")!,
              ]
            ),
            // next two buttons
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  returnFormattedHomeButton("customerList" , "Customer List")!,
                  returnFormattedHomeButton("purchaseOffer" , "Purchase Offer")!
                ]
            )
          ]
        )
      )
    );
  }
}
