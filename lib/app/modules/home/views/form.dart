import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset("asset/image/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.travel_explore),
                          labelText: 'Nama Area',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.location_on),
                          labelText: 'Lokasi',
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.palette),
                          labelText: 'Warna',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 500,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {},
                          child: Text(
                            "Buat Area Terumbu Karang",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              child: Image.asset('asset/image/bottom.png'),
            )
          ],
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
