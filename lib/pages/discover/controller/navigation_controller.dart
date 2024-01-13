import 'package:get/get.dart';

class navigationController extends GetxController {
  var selectIndex = 0.obs;
  void changeIndex(int index) {
    selectIndex.value = index;
  }
}
