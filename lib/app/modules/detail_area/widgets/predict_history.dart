import 'package:flutter/material.dart';

class PredictHistory extends StatelessWidget {
  const PredictHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        margin: const EdgeInsets.only(bottom: 10),
        elevation: 10,
        child: Column(
          children: [
            Row(
              children: [
                // Column Image
                Column(
                  children: [
                    Image.asset(
                      'assets/image/coral.jpg',
                      height: 100,
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Column Text
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              '    1 September 2022',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '12:00:00',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              '    Spesies        :',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Acanthastrea',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              '    Presentasi Kemiripan :',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '80%',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
