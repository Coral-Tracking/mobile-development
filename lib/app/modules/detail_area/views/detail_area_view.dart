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
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Detail Area',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('Detail Informasi & Riwayat'),
          const SizedBox(
            height: 10,
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
            title: "Classification",
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
            title: "Object Detection",
            iconColor: Colors.white,
            bubbleColor: Colors.blue,
            icon: Icons.home,
            titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
            onPress: () {
              Get.toNamed(Routes.OBJECT_DETECTION);
              _animationController.reverse();
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
