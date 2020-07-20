import 'package:flutter/material.dart';
import 'package:misfitswebsite/Navbar/navbar.dart';

class AchievementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: [NavBar(), Achievement()]),
      ),
    );
  }
}

class Achievement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: DesktopAchievement(),
          );
        } else {
          return PhoneAchievement();
        }
      },
    );
  }
}

class DesktopAchievement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height + 200,
      width: width,
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Achievements',
            style: TextStyle(
              color: Colors.green,
              fontSize: 54.0,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: height,
            width: width,
            child: ListView(
              children: [
                buildAchievementCard(
                    'assets/technex.jpg',
                    'IIT Varanasi Technex 2019',
                    'Crop Disease Detection using Drone and Computer Vision',
                    'First in One Theme',
                    'Fourth in Modex { Another Theme } ',
                    '',
                    1),
                SizedBox(
                  height: 50.0,
                ),
                buildAchievementCard(
                    'assets/hack.jpg',
                    'Smart India Hackathon 2019',
                    'Real Time Traffic Management using Computer Vision',
                    'Participants: 2,10,000 Teams',
                    'Finalists: 190 Teams',
                    'Winners: 80 Teams',
                    1),
                SizedBox(
                  height: 50.0,
                ),
                buildAchievementCard(
                    'assets/eyantra.jpg',
                    'Eyantra Idea Competition 2019',
                    'Real Time Traffic Management/ Monitoring System \nfor Emergency Vehicles',
                    'Participant: 5090 Participants',
                    'Regional Finals: 59 Teams',
                    'Finalists: 21 Teams { We were not one of them } ',
                    1),
                SizedBox(
                  height: 50.0,
                ),
                buildAchievementCard(
                    'assets/hack20.png',
                    'Smart India Hackathon 2020',
                    'Electronic Health Record Using Blockchain Technology',
                    'College Level Competition',
                    'Got Selected In Both Software & Hardware',
                    '',
                    1),
                SizedBox(
                  height: 50.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'byproducts',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 54.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                buildAchievementCard(
                    'assets/yourstory.png',
                    'Covered by YourStory',
                    "YourStory.com is India's biggest and definitive",
                    'platform for startups and ',
                    'entrepreneurs related stories, resources, ',
                    'research reports and analysis of the startup',
                    0),
                SizedBox(
                  height: 50.0,
                ),
                buildAchievementCard(
                    'assets/tv.jpg', 'Aired on national tv', "", '', '', '', 0),
                SizedBox(
                  height: 50.0,
                ),
                buildAchievementCard('assets/newspaper.jpg',
                    'Covered by Newspapers', "", '', '', '', 1),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget buildAchievementCard(String imagePath, String competitionName,
    String infoOne, String infoTwo, String infoThree, String infoFour, int a) {
  return Container(
    child: Row(
      children: [
        Container(
          height: 450.0,
          width: 650.0,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.green, width: 4.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: a == 1 ? BoxFit.fill : BoxFit.cover)),
        ),
        SizedBox(
          width: 50.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              competitionName,
              style: TextStyle(
                color: Colors.green,
                fontSize: 36.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              infoOne,
              style: TextStyle(
                color: Colors.black,
                fontSize: 27.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              infoTwo,
              style: TextStyle(
                color: Colors.black,
                fontSize: 27.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              infoThree,
              style: TextStyle(
                color: Colors.black,
                fontSize: 27.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              infoFour,
              style: TextStyle(
                color: Colors.black,
                fontSize: 27.0,
              ),
            )
          ],
        )
      ],
    ),
  );
}

class PhoneAchievement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
