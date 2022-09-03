import 'package:coral/app/data/models/coral_model.dart';
import 'package:flutter/material.dart';

class PredictHistory extends StatelessWidget {
  final CoralModel coralModel;

  const PredictHistory({
    required this.coralModel,
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
                    Image.network(
                      coralModel.imageUrl,
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
                          children: [
                            Text(
                              // '    1 September 2022',
                              '${coralModel.parsingDateTime().day}-${coralModel.parsingDateTime().month}-${coralModel.parsingDateTime().year}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${coralModel.parsingDateTime().hour}:${coralModel.parsingDateTime().minute}',
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              '    Spesies        :',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              coralModel.species,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              '    Presentasi Kemiripan :',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${coralModel.percentage}%',
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black),
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
