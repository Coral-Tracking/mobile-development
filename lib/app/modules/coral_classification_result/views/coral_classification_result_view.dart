import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/coral_classification_result_controller.dart';

class CoralClassificationResultView
    extends GetView<CoralClassificationResultController> {
  const CoralClassificationResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classification Result'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.file(controller.model.imageFile),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        controller.model.coralName,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
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
                            const SizedBox(
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
                            SizedBox(
                              width: 55,
                              child: Card(
                                color: const Color.fromRGBO(55, 101, 195, 0.05),
                                child: Center(
                                  child: Text(
                                    controller.model.accuracy,
                                    style: const TextStyle(
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
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: controller.handleSaveButton,
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: const Text(
                    "Simpan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              controller.obx((state) => const SizedBox.shrink()),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: controller.handleBackToDashboardButton,
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: const Text(
                    "Kembali ke Dashboard",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
