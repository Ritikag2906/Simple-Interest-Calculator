import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Interest Calculator',
      home: SIForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: Column(
          children: <Widget>[
            getImageAsset(),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Principal',
                  hintText: 'Enter Principal e.g. 50000'),
            )
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/moneybank.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );

    return Center(
      child: Container(
        child: image,
        margin: EdgeInsets.all(_minimumPadding * 10),
      ),
    );
  }
}
