import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class train extends StatefulWidget {
  const train({Key? key}) : super(key: key);

  @override
  State<train> createState() => _trainState();
}

class _trainState extends State<train> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.arrow_forward)),
        ],
        title: Container(
          margin: EdgeInsets.only(left: 75),
          child: Text(
            "Pindai Terumbu Karang",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image.asset('asset/image/coral.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Acanthastrea',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jenis Terumbu',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Akurasi',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 105,
                              child: Card(
                                color: Color.fromRGBO(55, 101, 195, 0.05),
                                child: Center(
                                  child: Text(
                                    'Hard Coral',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(36, 71, 249, 1),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 55,
                              child: Card(
                                color: Color.fromRGBO(55, 101, 195, 0.05),
                                child: Center(
                                  child: Text(
                                    '80%',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(36, 71, 249, 1),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text(
                    "Simpan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text(
                    "Kembali ke Dashboard",
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
    );
  }
}
