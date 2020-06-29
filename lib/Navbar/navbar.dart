import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavbar();
        } else {
          return PhoneNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 100),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              child: Row(
                children: [
                  FlutterLogo(
                    colors: Colors.green,
                    size: 40.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'MISFITS',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 34.0,
                    ),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 2.0,
            width: width - 50,
            decoration: BoxDecoration(color: Colors.green),
          )
        ],
      ),
    );
  }
}

class PhoneNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              child: Row(
                children: [
                  FlutterLogo(
                    colors: Colors.green,
                    size: 40.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'MISFITS',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 34.0,
                    ),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 2.0,
            width: width - 50,
            decoration: BoxDecoration(color: Colors.green),
          )
        ],
      ),
    );
  }
}
