import 'package:get/get.dart';
import 'package:getx_teste/controller/get_controller.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerX>(() => ControllerX());
  }
}