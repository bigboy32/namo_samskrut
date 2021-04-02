import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase PoC",
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 100.0,
            title: Center(child:Text("Firebase PoC"))
          ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(padding: EdgeInsets.all(10), child:ElevatedButton(onPressed: (){}, child: Text("Sign-Up"))),
            Padding(padding: EdgeInsets.all(10), child:ElevatedButton(onPressed: (){}, child: Text("Login"))),
          ]))
        ],
      ),
    );
  }
}
