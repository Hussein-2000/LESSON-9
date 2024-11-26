import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Track selected toppings (checkboxes)
  List<bool> toppings = [false, false, false, false, false];

  // Track selected pizza size (radio button)
  String selectedSize = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox & Radio Buttons'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                'Select Your Pizza Toppings:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              // Displaying multiple checkboxes using CheckboxListTile
              CheckboxListTile(
                title: Text("Onions", style: TextStyle(fontSize: 20.0)),
                value: toppings[0],
                onChanged: (bool? value) {
                  setState(() {
                    toppings[0] = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Mushrooms", style: TextStyle(fontSize: 20.0)),
                value: toppings[1],
                onChanged: (bool? value) {
                  setState(() {
                    toppings[1] = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Black olives", style: TextStyle(fontSize: 20.0)),
                value: toppings[2],
                onChanged: (bool? value) {
                  setState(() {
                    toppings[2] = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Green peppers", style: TextStyle(fontSize: 20.0)),
                value: toppings[3],
                onChanged: (bool? value) {
                  setState(() {
                    toppings[3] = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Extra cheese", style: TextStyle(fontSize: 20.0)),
                value: toppings[4],
                onChanged: (bool? value) {
                  setState(() {
                    toppings[4] = value ?? false;
                  });
                },
              ),
              SizedBox(height: 10.0),
              Text(
                'Select Your Pizza Size:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              // Displaying multiple radio buttons using RadioListTile
              RadioListTile<String>(
                title: Text("Small", style: TextStyle(fontSize: 20.0)),
                value: "Small",
                groupValue: selectedSize,
                onChanged: (String? selected) {
                  setState(() {
                    selectedSize = selected ?? "";
                  });
                },
              ),
              RadioListTile<String>(
                title: Text("Medium", style: TextStyle(fontSize: 20.0)),
                value: "Medium",
                groupValue: selectedSize,
                onChanged: (String? selected) {
                  setState(() {
                    selectedSize = selected ?? "";
                  });
                },
              ),
              RadioListTile<String>(
                title: Text("Large", style: TextStyle(fontSize: 20.0)),
                value: "Large",
                groupValue: selectedSize,
                onChanged: (String? selected) {
                  setState(() {
                    selectedSize = selected ?? "";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
