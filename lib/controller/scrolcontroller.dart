// ignore_for_file: override_on_non_overriding_member, camel_case_types, avoid_print

import 'package:get/get.dart';

class Scroll_Controller extends GetxController {
  static Scroll_Controller get to => Get.find();
  bool isMale = false;

  void updatedata(bool value) {
    isMale = value;
    print(isMale);
    update();
  }
}

  // void initState() {
  //   isMale = false;
  //   ItemScrollController data = ItemScrollController();
  //   itemScrollController = data;
  //   isMale = false;
  //   jumpTo(0);
  // }

 
  // @override
  // void onClose() {
  //   isMale = false;
  //   ItemScrollController data = ItemScrollController();
  //   itemScrollController = data;
  //   isMale = false;
  //   jumpTo(0);
  //   super.onClose();
  // }

