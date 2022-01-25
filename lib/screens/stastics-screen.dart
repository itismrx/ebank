import 'package:ebank/constant.dart';
import 'package:ebank/widgets/activity-tile.dart';

import '../widgets/chart-widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StasticsScreen extends StatefulWidget {
  @override
  _StasticsScreenState createState() => _StasticsScreenState();
}

class _StasticsScreenState extends State<StasticsScreen> {
  String? dropdownValue = 'USD';
  var items = ["USD", "BIRR", "POUND"];
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          FontAwesomeIcons.arrowLeft,
                          size: 21,
                        ),
                      ),
                      Text(
                        'Statistics',
                        style: TextStyle(
                            fontFamily: 'Dongle',
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  DropdownButton(
                    underline: Text(''),
                    value: dropdownValue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text('$items Balance'),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                  ),
                  Text(
                    '\$${3632.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 66,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dongle',
                      height: 1,
                    ),
                  ),

                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 220),
                    // height: 100,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: LineChartWidget(),
                        ),
                        Positioned(
                            top: 40,
                            left: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: kBlueColor,
                                    ),
                                    Text(
                                      '\$4.5k income',
                                      style: TextStyle(
                                          fontFamily: 'Dongle',
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: kDeepBlueColor,
                                    ),
                                    Text(
                                      '\$1.5k expense',
                                      style: TextStyle(
                                          fontFamily: 'Dongle',
                                          fontSize: 22,
                                          height: 1,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search Transactions...",
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
