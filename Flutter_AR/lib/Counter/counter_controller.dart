import 'package:flutter/widgets.dart';
import 'package:login_design/Counter/counter_Screen.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;
  RxInt limit = 0.obs;
  TextEditingController limitTxtController = TextEditingController();
  void increment() {
    if (count.value < limit.value) {
      count.value++;
    }
  }

  void decrement() {
    if (count.value > 0) count.value--;
  }

  void reset() {
    count.value = 0;
  }

  void saveLimit() {
    limit.value = int.parse(limitTxtController.text);
    print(limitTxtController.text);
    Get.to(Counter());
  }
}
