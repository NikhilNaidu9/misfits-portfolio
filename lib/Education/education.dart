import 'package:flutter/material.dart';
import 'package:misfitswebsite/Navbar/navbar.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [NavBar(), Education()]),
      ),
    );
  }
}

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: DesktopEducation(),
          );
        } else {
          return PhoneEducation();
        }
      },
    );
  }
}

class DesktopEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Education',
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
                                'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/school.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'SSC',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 36.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ST. Aloysius High School',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Place: Nallasopara',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                    ],
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
                                'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/school.png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'HSC',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 36.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'St. Stanislaus Junior College',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Place: Nallasopara',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                    ],
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
                                'https://raw.githubusercontent.com/NikhilNaidu9/self-portfolio/master/assets/student%20(1).png'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'TE EXTC',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Viva Institute Of Technology',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Place: Virar',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 120.0,
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

class PhoneEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
