import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/painters/rps-custome-painter.dart';
import '.././widgets/activity-tile.dart';
import '.././widgets/avater-widget.dart';
import '../constant.dart';

class LandingScreen extends StatelessWidget {
  // const LandingScreen({

  // }) ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 40,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Dongle",
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'John Doe 👋',
                        style: TextStyle(
                          fontSize: 28,
                          // fontFamily: 'Dongle',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'asset/images/icons/notification.png',
                      height: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20 * 2,
              ),
              Container(
                color: Colors.transparent,
                height: 200,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CustomPaint(
                        size: Size(
                            450,
                            450 *
                                0.65
                                    // (1080 * 0.625)
                                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: RPSCustomPainter(),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: size.width * 0.32,
                      child: AvaterWidget(
                        uri:
                            'https://i.pinimg.com/originals/b5/bf/2c/b5bf2c28c9215e584b397ee153776480.jpg',
                        height: 75,
                        width: 75,
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.25,
                      top: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Current Balance',
                            style: TextStyle(color: Colors.white54),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '\$3,432.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 34),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            '+1.03% from Last week',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Send Again',
                style: TextStyle(
                    color: Color(0xff1c1b40),
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                    fontFamily: 'Dongle'),
              ),
              Container(
                height: 90,
                width: size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // AvaterWidget(
                      //   uri:
                      //       "https://i.pinimg.com/originals/21/2c/ee/212cee95875ce62c2b290d4d18c1f815.jpg",
                      // ),
                      AvaterWidget(
                          uri:
                              "https://i.pinimg.com/originals/5c/53/8f/5c538f919f3128b922bfc342b6467e13.png"),
                      AvaterWidget(
                        uri:
                            'https://i.pinimg.com/originals/b5/07/d4/b507d4ca6813afc6ada09dcc62db3d1f.jpg',
                      ),
                      Container(
                        height: 75,
                        width: 75,
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Icon(
                            Icons.add,
                            size: 35,
                            color: kBlueColor,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kBlueColor,
                            width: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Activity',
                      style: TextStyle(
                          color: Color(0xff1c1b40),
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                          fontFamily: 'Dongle'),
                    ),
                    Row(
                      children: [
                        Text(
                          'See All >',
                          style: TextStyle(
                              fontSize: 24,
                              color: kBlueColor,
                              fontFamily: 'Dongle',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * .25,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ActivityTile(
                        title: "Dribble Pro",
                        subtitle: "Today 9:00",
                        icon: FontAwesomeIcons.dribbble,
                        price: 88.00,
                      ),
                      ActivityTile(
                        title: "Amazone",
                        subtitle: "Yesterday 8:00",
                        icon: FontAwesomeIcons.amazon,
                        price: 99.00,
                      ),
                      ActivityTile(
                        title: "School Payment",
                        subtitle: "Monday 9:00",
                        icon: FontAwesomeIcons.school,
                        price: 128.00,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
