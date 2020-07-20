import 'package:flutter/material.dart';
import 'package:misfitswebsite/Navbar/navbar.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [NavBar(), Skills()]),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: DesktopSkills(),
          );
        } else {
          return PhoneSkills();
        }
      },
    );
  }
}

class DesktopSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Skills',
            style: TextStyle(
              color: Colors.green,
              fontSize: 54.0,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/nlp.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Conceptual',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/team.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Team Work',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/determination.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Determined',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/decision-making.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Decision Making',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/workaholic.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Workaholic',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              '"Dont\'t wish for it. Work for it"',
              style: TextStyle(color: Colors.black87, fontSize: 40.0),
            ),
          ),
          SizedBox(
            height: 40.0,
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

class PhoneSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
