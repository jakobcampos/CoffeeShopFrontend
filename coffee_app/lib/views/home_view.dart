import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee App'),
      ),
      body: Center(
        child: Text('Welcome to Coffee App!'),
      ),
    );
  }
}
