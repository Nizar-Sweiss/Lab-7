import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:main/screens/moscow.dart';
import 'package:main/screens/peterburg.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 21, 0, 96),
          title: Text(
            "Travel Agency App",
          ),
        ),
        backgroundColor: Color.fromARGB(255, 120, 102, 224),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  child: Text(
                "Where Are \nwe going next !? ",
                style: TextStyle(fontSize: 50,color: Colors.white),
              )),
              
              SizedBox(
                height: 70,
              ),
                Divider(
              height: 5,
              thickness: 2,
              color: Color.fromARGB(255, 80, 73, 82),
            ),
              Container(
                  child: Text(
                "Available Trips ",
                style: TextStyle(fontSize: 20,color: Colors.white),
              )),
              Container(
                height: 500,
                width: 500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 120, 102, 224),
                                fixedSize: const Size(300, 400),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                             setState(() {
                               Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return Moscow();
                                })));
                             });

                              
                            },
                            child: Stack(
                              alignment: Alignment(0, 0.7),
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(20), // Image border
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(290), // Image radius
                                    child: Image.asset('images/Moscow.jpg',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Text(
                                  "Moscow",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 40),
                                )
                              ],
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 120, 102, 224),
                                fixedSize: const Size(300, 400),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              setState(() {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return Peterburg();
                                })));
                              });
                            },
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(20), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(290), // Image radius
                                child: Stack(
                              alignment: Alignment(0, 0.7),
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(20), // Image border
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(290), // Image radius
                                    child: Image.asset('images/Peterburg.jpg',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Text(
                                  " St. Peterburg",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 40),
                                )
                              ],
                            )
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
