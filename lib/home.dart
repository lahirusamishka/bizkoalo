import 'package:bizkoalo/customers.dart';
import 'package:bizkoalo/products_and_services.dart';
import 'package:bizkoalo/profile.dart';
import 'package:bizkoalo/settings.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  final String caption;
  // List<int> text = [1, 2, 3, 4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19];
  // final List<int> colorCodes = <int>[600, 500, 100];
  Home({Key key, this.caption}) : super(key: key);
final _scaffoldKey = GlobalKey<ScaffoldState>(); 



  createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('sdfsd'),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop(customController.text.toString());
                },
              )
            ],
          );
        });
  }

  deleteQuatation(BuildContext context) {
    // TextEditingController customController = TextEditingController();
    Widget cancelButton = FlatButton(
      child: Text("Yes"),
      onPressed: () {},
    );
    Widget continueButton = FlatButton(
      child: Text("No"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Are you sure", textAlign: TextAlign.center),
      content: Text("you want to delete?", textAlign: TextAlign.center),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
    // return showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         title: Text('sdfsd'),
    //         content: TextField(
    //           controller: customController,
    //         ),
    //         actions: <Widget>[
    //           MaterialButton(
    //             elevation: 5.0,
    //             child: Text('Submit'),
    //             onPressed: () {
    //               Navigator.of(context).pop(customController.text.toString());
    //             },
    //           )
    //         ],
    //       );
    //     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(caption),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.userCircle),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: Profile()));
            },
          )
        ],
      ),

      body: Container(
        child: Column(
          children: [
            // for (var i in text)
            ListTile(
              title: Text('samishka sdfs s df s sf samishk sdf'),
              leading: Wrap(
                spacing: 1, // space between two icons
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.clone),
                    tooltip: 'Increase volume by 10',
                    onPressed: () {
                      createAlertDialog(context);
                    },
                  ), // icon-1
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.paperPlane),
                    tooltip: 'Increase volume by 1d0',
                    onPressed: () {
                      _displaySnackBar(context);
                    },
                  ), // icon-1
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.trashAlt),
                    tooltip: 'Increase volume by 10',
                    onPressed: () {
                      deleteQuatation(context);
                    },
                  ), // icon-1
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.arrowAltCircleDown),
                    tooltip: 'Increase volume by 10',
                    onPressed: () {},
                  ) // icon-1
                ],
              ),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('New Quatation'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),

      // floatingActionButton: FloatingActionButton.extended(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     print('Clicked');
      //   },
      //    label: Text('New Quatation'),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Bizkoalo"),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text("Customers"),
            leading: FaIcon(FontAwesomeIcons.users),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: Customers()));
            },
          ),
          ListTile(
            title: Text("Product and Service"),
            leading: FaIcon(FontAwesomeIcons.briefcase),
            onTap: () {
              //  Scaffold.of(context).showSnackBar(SnackBar(
              //     content: Text('Hello!'),
              //   ));
              // Navigator.push(
              //     context,
              //     PageTransition(
              //         type: PageTransitionType.fade,
              //         child: ProductsAnServices()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Profile"),
            leading: FaIcon(FontAwesomeIcons.solidUserCircle),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: Profile()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Settings"),
            leading: FaIcon(FontAwesomeIcons.cog),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: Settings()));
            },
          )
        ],
      )),
    );
  }
}

_displaySnackBar(BuildContext context) {
  final snackBar = SnackBar(content: Text('Are you talkin\' to me?'));
  Scaffold(
    appBar: AppBar(
      title: Text("$snackBar"),
    ),
    body: Builder(
      builder: (context) => Center(
        child: RaisedButton(
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () => _displaySnackBar(context),
          child: Text('Display SnackBar'),
        ),
      ),
    ),
  );
}

class Context {}

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Quatation'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Drawer Header'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//       body: Center(child: Text('You have prtton times.')),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {},
//         label: Text('New Quatation'),
//         icon: Icon(Icons.add),
//         backgroundColor: Colors.blue,
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }

// // class SecondScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Secondf Screen"),
// //       ),
// //       body: Center(
// //           // child: RaisedButton(
// //           //   onPressed: () {
// //           //     Navigator.push(
// //           //         context,
// //           //         PageTransition(
// //           //             type: PageTransitionType.fade, child: FirstScreen()));
// //           //   },
// //           //   child: Text('Go back!'),
// //           // ),
// //           ),
// //     );
// //   }
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final caption = 'Samishka Flutter';
// //     return MaterialApp(
// //       title: caption,
// //       initialRoute: '/',
// //       routes: {
// //         '/': (context) => FirstScreen(),
// //         // '/second': (context) => SecondScreen(),
// //       },
// //       home:  HomePage(title:caption),
// //     );
// //   }
// // }
