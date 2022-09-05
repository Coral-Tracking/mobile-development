import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'package:get/get.dart';

import '../controllers/add_area_controller.dart';

class AddAreaView extends GetView<AddAreaController> {
  const AddAreaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset('assets/image/bottom.png'),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: Get.height * 1.1,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset("assets/image/logo.png"),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              TextField(
                                controller: controller.areaNameController,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.travel_explore),
                                  labelText: 'Nama Area',
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextField(
                                controller: controller.locationController,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.location_on),
                                  labelText: 'Lokasi',
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextField(
                                controller: controller.colorTextController,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(8),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.palette),
                                  labelText: 'Warna',
                                ),
                                readOnly: true,
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Color Picker"),
                                        content: SingleChildScrollView(
                                          child: ColorPicker(
                                            pickerColor:
                                                controller.selectedColor,
                                            onColorChanged:
                                                controller.handleChangeColor,
                                          ),
                                        ),
                                        actions: <Widget>[
                                          ElevatedButton(
                                            child: const Text('Select'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 500,
                                height: 50,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: controller.handleSubmitButton,
                                  color: Colors.blueAccent,
                                  textColor: Colors.white,
                                  child: const Text(
                                    "Buat Area Terumbu Karang",
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
