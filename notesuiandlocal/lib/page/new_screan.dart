import 'package:flutter/material.dart';

class NewScrean extends StatefulWidget {
 

  @override
  State<NewScrean> createState() => _NewScreanState();
}

class _NewScreanState extends State<NewScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}