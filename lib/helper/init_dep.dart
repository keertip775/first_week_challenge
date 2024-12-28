import 'package:get/get.dart';

import '../controllers/tap_controller.dart';
import '../list_controller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
    // TODO: implement dependencies
  }
}
