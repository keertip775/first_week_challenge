import 'package:first_week_challenge/list_controller.dart';
import 'package:get/get.dart';

import '../controllers/tap_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
