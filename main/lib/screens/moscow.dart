import 'dart:js_util';

import 'package:flutter/material.dart';

class Moscow extends StatelessWidget {
  const Moscow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 85, 84, 192),
          title: Text('Moscow City Tour'),
        ),
        backgroundColor: Color.fromARGB(255, 120, 102, 224),
        body: MoscowScreen(),
      ),
    );
  }
}

class MoscowScreen extends StatefulWidget {
  const MoscowScreen({super.key});

  @override
  State<MoscowScreen> createState() => _MoscowScreenState();
}

String payingMethod = '';
List trasportation = ["Plane", "Ship", "Yacht"];
String selectedAnswer = "Plane";
bool isChecked = false;

class _MoscowScreenState extends State<MoscowScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Moscow.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "Moscow",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
               Divider(
                height: 5,
                thickness: 5,
              ),
            Row(
              children: [
                Icon(
                  Icons.attach_money,
                  size: 50,
                  color: Color.fromARGB(255, 20, 177, 22),
                ),
                Text(
                  "400 JD ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 20, 177, 22),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.star,
                  size: 50,
                  color: Color.fromARGB(255, 255, 251, 0),
                ),
                Text(
                  "5",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: Text(
                "Address: улица, Zoi I Aleksandra Kosmodem'yanskikh Ulitsa, 4 корп 1,\nMoscow, Russia, 117447 ",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "People",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              child: Text(
                "Pick how many people going to join this trip ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Row(
              children: [
                AppButtons(
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  borderColor: Colors.black,
                  text: "1",
                  width: 50,
                  height: 50,
                ),
                AppButtons(
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  borderColor: Colors.black,
                  text: "2",
                  width: 50,
                  height: 50,
                ),
                AppButtons(
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  borderColor: Colors.black,
                  text: "3",
                  height: 50,
                  width: 50,
                ),
                AppButtons(
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  borderColor: Colors.black,
                  text: "4",
                  height: 50,
                  width: 50,
                ),
                AppButtons(
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  borderColor: Colors.black,
                  text: "5",
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "Paying Method",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              color: Color.fromARGB(0, 255, 193, 7),
              child: RadioListTile(
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.paypal,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text("PayPal",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  secondary: Icon(Icons.question_answer),
                  value: "PayPal",
                  groupValue: payingMethod,
                  onChanged: ((value) {
                    setState(() {
                      payingMethod = value.toString();
                    });
                  })),
            ),
            Container(
              color: Color.fromARGB(0, 255, 193, 7),
              child: RadioListTile(
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text("Master Card ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  secondary: Icon(Icons.question_answer),
                  value: "Master Card",
                  groupValue: payingMethod,
                  onChanged: ((value) {
                    setState(() {
                      payingMethod = value.toString();
                    });
                  })),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    "Transportation ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                DropdownButton(
                    value: selectedAnswer,
                    items: trasportation
                        .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              "${e}",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 254, 254)),
                            )))
                        .toList(),
                    onChanged: ((value) {
                      setState(() {
                        selectedAnswer = value.toString();
                      });
                    })),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Container(
                  child: Text(
                    "Are Brting your PET",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            AppButtons(
              textColor: Color.fromARGB(255, 82, 3, 119),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              borderColor: Colors.black,
              text: "Book Trip Now ",
              height: 40,
              width: 300,
            ),
          ],
        )
      ],
    );
  }
}

class AppButtons extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  double height;
  double width;
  AppButtons(
      {super.key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.height,
      required this.width,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 1)),
    );
  }
}
