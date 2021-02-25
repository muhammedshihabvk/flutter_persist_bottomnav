import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample page"),
      ),
      body: Center(child: Text("Hello World"),),
    );
  }
}
