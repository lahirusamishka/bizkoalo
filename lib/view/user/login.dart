import 'package:bizkoalo/view/user/loginPage.dart';
import 'package:bizkoalo/view/user/signup%20copy.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
        length: 2,
        
        child: Scaffold(
          
          appBar: AppBar(
            title: Text("asdff",textAlign: TextAlign.end),
            bottom: TabBar(
              tabs: [
                Tab(text: "LOGIN",),
                Tab(text: "SIGNUP"),
              ],
            ),
            // title: Text('Persistent Tab Demo'),
          ),
          body: TabBarView(
            children: [
              LoginPage(),
              SignUpPage(),
            ],
          ),
        ),
      );
  }
}
