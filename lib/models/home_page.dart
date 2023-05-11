import 'package:dice_app/models/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController _homeController =
      Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text('Dice App'),
        ),
      ),
      body: Center(
        child: Obx(
          () => Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                      onTap: () {
                        _homeController.random();
                      },
                      child: Image.asset(
                          'assets/images/dice_${_homeController.solDice}.png')),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                      onTap: () => _homeController.random(),
                      child: Image.asset(
                          'assets/images/dice_${_homeController.onDice}.png')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
