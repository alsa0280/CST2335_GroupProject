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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
            Padding(
              padding: EdgeInsets.all(homeButtonPadding),
              child: ElevatedButton(
                  onPressed: (){Navigator.pushNamed(context, 'customerList');},
                  child: Text("Customer List", style: homeButtonTextStyle),
              )
            ),
            Padding(
                padding: EdgeInsets.all(homeButtonPadding),
                child: ElevatedButton(
                    onPressed: (){Navigator.pushNamed(context, 'carsForSale');},
                    child: Text("Cars For Sale", style: homeButtonTextStyle)
                )
            ),
            Padding(
                padding: EdgeInsets.all(homeButtonPadding),
                child: ElevatedButton(
                    onPressed: (){Navigator.pushNamed(context, 'boatsForSale');},
                    child: Text("Boats For Sale", style: homeButtonTextStyle)
                )
            ),
            Padding(
                padding: EdgeInsets.all(homeButtonPadding),
                child: ElevatedButton(
                    onPressed: (){Navigator.pushNamed(context, 'purchaseOffer');},
                    child: Text("Purchase Offer", style: homeButtonTextStyle)
                )
            )
          ]
        )
      )
    );
  }
}
