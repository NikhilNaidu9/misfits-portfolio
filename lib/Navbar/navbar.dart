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
      padding: EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Container(
                child: Icon(
                  Icons.person,
                  color: Colors.green,
                  size: 27.0,
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  InkWell(
                    child: Text(
                      'Education',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 27.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/education');
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/skills');
                    },
                    child: Text(
                      'Skills',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 27.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/achievements');
                    },
                    child: Text(
                      'Achievements',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 27.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/goals');
                    },
                    child: Text(
                      'Goals',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 27.0,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
          SizedBox(
            height: 10.0,
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
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              child: Container(
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
                      'Nikhil Naidu',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 34.0,
                      ),
                    ),
                  ],
                ),
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
