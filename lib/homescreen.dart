import 'package:flutter/material.dart';
import 'package:web/components.dart';
import 'package:web/page2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              maxHeight: size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Header(),
                Jumbotron("Watch Video", () {}, "Get Started", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen2()));
                }),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
