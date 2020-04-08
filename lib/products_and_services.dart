import 'package:flutter/material.dart';

class ProductsAnServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product and Service"),
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