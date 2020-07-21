import 'package:flutter/material.dart';
import 'package:misfitswebsite/Navbar/navbar.dart';

class GoalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [NavBar(), Goals()]),
      ),
    );
  }
}

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: DesktopGoals(),
          );
        } else {
          return PhoneGoals();
        }
      },
    );
  }
}

class DesktopGoals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Goals',
            style: TextStyle(
              color: Colors.green,
              fontSize: 54.0,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/book.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Publish Book',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Time: 2 Years',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/suit.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Forbes 30 Under 30',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Time: 9 Years',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Whatever Your Mind Can Conceive and Believe, It Can Achieve. – Napoleon Hill.',
              style: TextStyle(color: Colors.black87, fontSize: 40.0),
            ),
          ),
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

class PhoneGoals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
