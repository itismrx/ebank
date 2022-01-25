import 'package:ebank/constant.dart';
import 'package:ebank/widgets/avater-widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './../widgets/painters/little-rectangle.dart';

class TransferScreen extends StatefulWidget {
  final String label;
  TransferScreen({this.label = "Transfer Screen"});
  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  String? dropdownValue = 'USD';
  var items = ["USD", "BIRR", "POUND"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Column(
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
                        'Send Money',
                        style: TextStyle(
                            fontFamily: 'Dongle',
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AvaterWidget(
                    uri:
                        'https://i.pinimg.com/originals/b5/bf/2c/b5bf2c28c9215e584b397ee153776480.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Text(
                    'Jhon Doe',
                    style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 48,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '666-746-8966',
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
          Flexible(
            child: Container(
              // height: size.height * 0.4,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black12,
                //     offset: Offset.zero,
                //     blurRadius: 2,
                //     spreadRadius: 2,
                //   )
                // ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  // LittleRectanglePainter()
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: CustomPaint(
                      size: Size(
                          500,
                          (500 * 0.125)
                              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: LittleRectanglePainter(),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'asset/images/icons/mastercard.png',
                              height: 32,
                              width: 32,
                            ),
                            Text(
                              '\$${3428.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 34,
                                fontFamily: 'Dongle',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            DropdownButton(
                              underline: Text(''),
                              value: dropdownValue,
                              icon: Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    // height: 100,
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text(
                            'Amount',
                            style: TextStyle(color: Colors.black45),
                          ),
                          Text(
                            '\$${67.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontFamily: 'Dongle',
                                fontWeight: FontWeight.bold,
                                fontSize: 48),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kBlueColor,
                    ),
                    child: Text(
                      'Send',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
