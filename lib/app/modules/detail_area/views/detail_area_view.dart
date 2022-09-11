import 'package:coral/app/routes/app_pages.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../dashboard/widgets/area_card.dart';
import '../controllers/detail_area_controller.dart';
import '../widgets/predict_history.dart';

class DetailAreaView extends StatefulWidget {
  const DetailAreaView({Key? key}) : super(key: key);

  @override
  State<DetailAreaView> createState() => _DetailAreaViewState();
}

class _DetailAreaViewState extends State<DetailAreaView>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<DetailAreaController>();

  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  "Detail Area",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Detail Informasi & Riwayat',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          AreaCard(model: controller.areaModel),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text("Riwayat"),
            ),
          ),
          controller.obx(
            (state) => Flexible(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, index) =>
                    PredictHistory(coralModel: controller.models[index]),
                itemCount: controller.models.length,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Edit Area",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.edit,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              
            },
          ),
          Bubble(
            title: "Klasifikasi",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.home,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              Get.toNamed(Routes.CLASSIFICATION,
                  arguments: controller.areaModel.areaId);
              _animationController.reverse();
            },
          ),
          Bubble(
            title: "Hapus Area",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.delete,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              
            },
          ),
          Bubble(
            title: "Object Deteksi",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.home,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              Get.toNamed(Routes.OBJECT_DETECTION);
              _animationController.reverse();
            },
          ),
          Bubble(
            title: "Hapus Riwayat",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.delete,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              
            },
          ),
        ],
        animation: _animation,
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        iconColor: Colors.white,
        iconData: Icons.add,
        backGroundColor: Colors.blue,
      ),
    );
  }
}
