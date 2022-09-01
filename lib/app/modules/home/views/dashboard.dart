import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'List Area',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Information & Description'),
                SizedBox(
                  height: 10,
                ),
                // Card 1
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(4, 48, 72, 1),
                          width: 500,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 25,
                                child: Text(
                                  'Maria Island',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(10, 63, 92, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Column(
                                children: [
                                  Text('Warna Area',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Lokasi',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Bikini Bottom',
                                      style: TextStyle(
                                        color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Card 2
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(4, 48, 72, 1),
                          width: 500,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 25,
                                child: Text(
                                  'Maria Island',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(10, 63, 92, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Column(
                                children: [
                                  Text('Warna Area',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Lokasi',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Bikini Bottom',
                                      style: TextStyle(
                                        color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(4, 48, 72, 1),
                          width: 500,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 25,
                                child: Text(
                                  'Maria Island',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(10, 63, 92, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Column(
                                children: [
                                  Text('Warna Area',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Lokasi',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Bikini Bottom',
                                      style: TextStyle(
                                        color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(4, 48, 72, 1),
                          width: 500,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 25,
                                child: Text(
                                  'Maria Island',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                       
                        Container(
                          padding: EdgeInsets.all(10),
                          color: Color.fromRGBO(10, 63, 92, 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Column(
                                children: [
                                  Text('Warna Area',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Lokasi',
                                  style: TextStyle(
                                    color: Colors.white70
                                  ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Bikini Bottom',
                                      style: TextStyle(
                                        color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Dashboard',
              backgroundColor: Color(0x043048)),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: 'Add Area',
              backgroundColor: Color(0x043048)),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Maps',
              backgroundColor: Color(0x043048)),
        ],
        onTap: (index) {
          {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
