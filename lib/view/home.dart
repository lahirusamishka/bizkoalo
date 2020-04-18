import 'package:bizkoalo/customers.dart';
import 'package:bizkoalo/view/products_and_services.dart';
import 'package:bizkoalo/view/profile.dart';
import 'package:bizkoalo/view/settings.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatelessWidget {
  final String caption;
  // List<int> text = [1, 2, 3, 4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19];
  final List<int> colorCodes = <int>[600, 500, 100];
  Home({Key key, this.caption}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(caption),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
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
              title: Text('samishka'),
              leading: Wrap(
                spacing: 12, // space between two icons
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.gamepad),
                    tooltip: 'Increase volume by 10',
                    onPressed: () {},
                  ), // icon-1
                  IconButton(
                    icon: Icon(Icons.gamepad),
                    tooltip: 'Increase volume by 10',
                    onPressed: () {},
                  ), // icon-1
                  IconButton(
                    icon: Icon(Icons.gamepad),
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
            leading: Icon(Icons.supervisor_account, color: Colors.blue),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: Customers()));
            },
          ),
          ListTile(
            title: Text("Product and Service"),
            leading: Icon(Icons.business_center, color: Colors.blue),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade,
                      child: ProductsAnServices()));
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.account_circle, color: Colors.blue),
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
            leading: Icon(Icons.settings, color: Colors.blue),
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
