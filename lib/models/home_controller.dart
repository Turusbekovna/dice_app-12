import 'dart:math';

import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> solDice = 4.obs;
  Rx<int> onDice = 5.obs;

  void random() {
    solDice.value = Random().nextInt(6) + 1;
    onDice.value = Random().nextInt(6) + 1;
  }
}
