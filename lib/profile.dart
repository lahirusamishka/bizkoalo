import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
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