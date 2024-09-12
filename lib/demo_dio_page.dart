import 'package:flutter/material.dart';

class DemoDioPage extends StatefulWidget {

  @override
  State<DemoDioPage> createState() => _DemoDioPageState();
}

class _DemoDioPageState extends State<DemoDioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo dio page"),
      ),
      body: Container(
        child: Text("Empty"),
      ),
    );
  }
}
