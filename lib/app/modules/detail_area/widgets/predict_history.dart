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
        child: Row(
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
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tanggal"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Species"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Akurasi")
                ],
              ),
            ),
            SizedBox(
              width: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(":"),
                  SizedBox(
                    height: 5,
                  ),
                  Text(":"),
                  SizedBox(
                    height: 5,
                  ),
                  Text(":")
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${coralModel.parsingDateTime().day}-${coralModel.parsingDateTime().month}-${coralModel.parsingDateTime().year}',
                ),
                SizedBox(
                  height: 5,
                ),
                Text(coralModel.species),
                SizedBox(
                  height: 5,
                ),
                Text('${coralModel.percentage}%')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
