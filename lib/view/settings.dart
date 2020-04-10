import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(

          // child: RaisedButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         PageTransition(
          //             type: PageTransitionType.fade, child: FirstScreen()));
          //   },
          //   child: Text('Go back!'),
          // ),
          ),
    );
  }
}